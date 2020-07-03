# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SupportPlan.delete_all;
SupportPlan.create([
        {
                supportWorkerName: 'Tom Stubbs',
                supportWorkerPhone: '07781 128990',
                whatsImportant: 'I want to have a life like everyone else seems to.
                                I want to have friends and people to share things with',
                goals: 'I want to be fit and healthy again, to lose 3stone in weight
                        I want to be able to go out and not be anxious
                        I want to be able to make friends',
                challenges: 'My anxiety
                        Cost of fitness classes or gym
                        Knowing how to cook meals which are healthy and low calorie',
                howAmIBestSupported: 'Referral to Fitter Futures
Referral for 12 weeks free at a Weight Loss class
Support of a Health Buddy to help me attend the above initially',
                longTermConditions: 'None',
                expectedOfMe: 'I will complete the referral for Fitter Futures and make an appointment at my GP surgery to have this and the referral to a weight loss group agreed.

Once agreed, I will attend sessions of these groups, initially with the Health Buddy my Link Worker arranges.

I will do everything I can to further my goals, eg cooking from the recipes given, mixing with people at the classes, with the help of my Health Buddy, even if this feels very difficult at first.',
                expectedOfLinkWorker: 'My Link Worker will write to my GP to advise them she has advised referral to Fitter Futures and a weight loss group and asking for these to be approved.

She will find a Health Buddy for me and introduce us.',
                whatTimeMightItTake: 'Initial goal of attending classes and fitter future sessions within one month (subject to referral times)

Further goals of weight loss, healthy eating and making friends will be met over the next 6 months
',
                reviewDate: '2020-07-04'
      }
      ]);
ScheduleItem.delete_all
ScheduleItem.create([
        {
                scheduledDate: '2020-06-30',
                scheduledTime: '10:00',
                title: 'Computers, Nuneaton & Bedworth',
                subtitle: 'Introduction session'
        },
        {
                scheduledDate: '2020-06-30',
                scheduledTime: '12:00',
                title: 'LadiesLink West Midlands',
                subtitle: 'Week 4'
        },
        {
                scheduledDate: '2020-06-30',
                scheduledTime: '19:00',
                title: 'RNIB Social',
                subtitle: 'Meet at the Red Lion'
        }
        ]);
