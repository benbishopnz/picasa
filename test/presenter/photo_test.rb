# -*- encoding: utf-8 -*-
require "helper"

describe Picasa::Presenter::Photo do
  before do
    body = MultiXml.parse(fixture("presenters/album_show.xml"))
    @photo = Picasa::Presenter::Photo.new(body["feed"]["entry"][0])
  end

  it "has links" do
    assert_equal 5, @photo.links.size
  end

  it "has content src" do
    expected = "https://lh4.googleusercontent.com/-O0AOpTAPGBQ/SMU_j4ADl9I/AAAAAAAAAFs/DRnmROPuRVU/Kashmir%252520range.jpg"
    assert_equal expected, @photo.content.src
  end

  it "has media credit" do
    assert_equal "Wojciech Wnętrzak", @photo.media.credit
  end

  it "has etag" do
    assert_equal "\"YD4qeyI.\"", @photo.etag
  end

  it "has id" do
    assert_equal "5243667226703402962", @photo.id
  end

  it "has published" do
    assert_equal "2008-09-08T15:06:55+00:00", @photo.published.to_s
  end

  it "has updated" do
    assert_equal "2009-06-24T15:59:48+00:00", @photo.updated.to_s
  end

  it "has title" do
    assert_equal "Kashmir range.jpg", @photo.title
  end

  it "has summary" do
    assert_nil @photo.summary
  end

  it "has album_id" do
    assert_equal "5243667126168669553", @photo.album_id
  end

  it "has access" do
    assert_equal "public", @photo.access
  end

  it "has width" do
    assert_equal 717, @photo.width
  end

  it "has height" do
    assert_equal 468, @photo.height
  end

  it "has size" do
    assert_equal 79465, @photo.size
  end

  it "has checksum" do
    assert_nil @photo.checksum
  end

  it "has timestamp" do
    assert_equal "1220886415000", @photo.timestamp
  end

  it "has image_version" do
    assert_equal 91, @photo.image_version
  end

  it "has commenting_enabled" do
    assert_equal true, @photo.commenting_enabled
  end

  it "has comment_count" do
    assert_equal 0, @photo.comment_count
  end

  it "has license" do
    assert_equal "ALL_RIGHTS_RESERVED", @photo.license
  end
end
