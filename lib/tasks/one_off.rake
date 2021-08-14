desc "create default categories"
task :create_categories => :environment do
  categories = [
    {category: 'Indoor', post_ids: [1]},
    {category: 'Outdoor', post_ids: [2]},
    {category: 'Succulent', post_ids: [3]},
  ]

  categories.each do |category|
    this_category = Category.where(
      category: category[:category],
    ).first_or_initialize

    this_category.update!(
      post_ids: category[:post_ids]
    )
    this_category.save
  end

end