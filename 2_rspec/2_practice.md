# 2.Rspec một số khái niệm và cách sử dụng
### Describe, context, It
Rspec cung cấp các hàm describe, context, it để nhóm các unit test với nhau. định nghĩa các kịch bản để test

Describe mô tả object cần test
Context ngữ cảnh, vd
It trong mỗi ngữ cảnh sẽ có nhiều behavior, it dùng định nghĩa behavior

describe, context: dùng để định nghĩa example group, tham số là một block chứa các example hoặc group
it: dùng để định nghĩa example

```ruby
RSpec.describe "something" do # Đối tượng cần test
  context "in one context" do # Ngữ cảnh để test
    it "does one thing" do # hành vi của đối tượng theo ngữ cảnh
    end
  end

  context "in another context" do
    it "does another thing" do
    end
  end
end
```

### Before, After hook
before hook giúp ta định nghĩa một đoạn code, đoạn code này sẽ được thực thi trước mỗi example `it`, giống call back trong rails
```ruby
class Thing
  def widgets
    @widgets ||= []
  end
end

RSpec.describe Thing do
  before do
    @thing = Thing.new
  end

  describe "initialized in before(:example)" do
    it "has 0 widgets" do
      expect(@thing.widgets.count).to eq(0)
    end

    it "can accept new widgets" do
      @thing.widgets << Object.new
    end

    it "does not share state across examples" do
      expect(@thing.widgets.count).to eq(0)
    end
  end
end
```

Hoặc ta có thể thêm tham số :context để before hook chạy trước mỗi group example
```ruby
class Thing
  def widgets
    @widgets ||= []
  end
end

RSpec.describe Thing do
  before(:context) do
    @thing = Thing.new
  end

  describe "initialized in before(:example)" do
    it "has 0 widgets" do
      expect(@thing.widgets.count).to eq(0)
    end

    it "can accept new widgets" do
      @thing.widgets << Object.new
    end

    it "will share state across examples" do
      expect(@thing.widgets.count).to eq(1)
    end
  end
end
```

ngược với before hook, after hook giúp ta định nghĩa một đoạn code, đoạn code này sẽ được thực thi sau mỗi example `it`

Phạm vi hoạt động của hook là group mà nó nằm
```ruby
RSpec.describe Thing do

  describe "group A" do
    before do
      @thing = Thing.new
    end

    it "has 0 widgets" do
      expect(@thing.widgets.count).to eq(0)
    end

    it "can accept new widgets" do
      @thing.widgets << Object.new
    end

    it "does not share state across examples" do
      expect(@thing.widgets.count).to eq(0)
    end
  end

  describe "group B" do
    # before hook will not affect
  end
end
```

### Let, Subject
dùng để định nghĩa đối tượng dùng để test

Khi không được định nghĩa subject có giá trị mặc định là một instance class được describe
```ruby
RSpec.describe Thing do
  before do
    @thing = Thing.new
  end

  it "is instantiated by RSpec" do
    expect(subject).to be_a(Thing)
  end
end
```

Khi được định nghĩa thì giá trị subject là giá trị được định nghĩa
```ruby
RSpec.describe Thing do
  before do
    @thing = Thing.new
  end

  subject { "This is a string" }

  it "is instantiated by RSpec" do
    expect(subject).to eq("This is a string")
  end
end
```

Let, let!

## 2.4 Matchers
Build-in matcher
```ruby
expect(actual).to eq(expected)
expect(actual).to be_a(expected_class)
expect(actual).to be_truthy
expect(actual).to be_empty
expect(actual).to be_nil
expect(actual).to raise_error
```

External matcher
- gem shoulda matcher: cung cấp nhiều matcher có thể phục vụ cho hầu hết các trường hợp






















## 2.5 Test style guide
### Có thể sử dụng describe và context tự do khi cần thiết.
- Sử dụng describe để nhóm theo class, module, method (hay theo action của controller).
- Sử dụng context để nhóm các điều kiện của example.

```ruby
RSpec.describe Order do
  context "with no items" do
    it "behaves one way" do
    end
  end

  context "with one item" do
    it "behaves another way" do
    end
  end
end
```

### Đặt tên block của describe
- Viết giải thích cho trường hợp không là method.
- Trong trường hợp đối với instance method thì gắn thêm "#" như "#method"
- Trong trường hợp đối với class method, scope thì gắn thêm "." như ".method"
```ruby
class Article
  def summary
    #...
  end

  def self.latest
    #...
  end
end

# the spec...
describe Article do
  describe "#summary" do
    #...
  end

  describe ".latest" do
    #...
  end
end
```
