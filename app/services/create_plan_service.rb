class CreatePlanService
  def call
    p1 = Plan.where(name: 'Platinum').first_or_initialize do |p|
      p.amount = 2900
      p.interval = 'month'
      p.stripe_id = 'platinum'
    end
    p1.save!(:validate => false)
    p2 = Plan.where(name: 'Gold').first_or_initialize do |p|
      p.amount = 1900
      p.interval = 'month'
      p.stripe_id = 'gold'
    end
    p2.save!(:validate => false)
    p3 = Plan.where(name: 'Silver').first_or_initialize do |p|
      p.amount = 900
      p.interval = 'month'
      p.stripe_id = 'silver'
    end
    p3.save!(:validate => false)
     p4 = Plan.where(name: 'Test').first_or_initialize do |p|
      p.amount = 15000
      p.interval = 'year'
      p.stripe_id = 'test'
    end
    p4.save!(:validate => false)
  end
end
