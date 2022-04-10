Rails.application.routes.draw do
  root to: 'pages#home'

  get 'past-calculator', to: 'calculator#pastcalculator'
  get 'past-results', to: 'calculator#pastresults'

  get 'future-calculator', to: 'calculator#futurecalculator'
  get 'future-results', to: 'calculator#futureresults'

  get 'yield-calculator', to: 'calculator#yieldcalculator'
  get 'yield-results', to: 'calculator#yieldresults'

  get 'suburb-stats', to: 'stats#suburbstats'
  get 'suburb-results', to: 'stats#suburbresults'
end
