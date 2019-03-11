{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html

module Stratosphere.ResourceProperties.SecretsManagerRotationScheduleRotationRules where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- SecretsManagerRotationScheduleRotationRules. See
-- 'secretsManagerRotationScheduleRotationRules' for a more convenient
-- constructor.
data SecretsManagerRotationScheduleRotationRules =
  SecretsManagerRotationScheduleRotationRules
  { _secretsManagerRotationScheduleRotationRulesAutomaticallyAfterDays :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON SecretsManagerRotationScheduleRotationRules where
  toJSON SecretsManagerRotationScheduleRotationRules{..} =
    object $
    catMaybes
    [ fmap (("AutomaticallyAfterDays",) . toJSON . fmap Integer') _secretsManagerRotationScheduleRotationRulesAutomaticallyAfterDays
    ]

-- | Constructor for 'SecretsManagerRotationScheduleRotationRules' containing
-- required fields as arguments.
secretsManagerRotationScheduleRotationRules
  :: SecretsManagerRotationScheduleRotationRules
secretsManagerRotationScheduleRotationRules  =
  SecretsManagerRotationScheduleRotationRules
  { _secretsManagerRotationScheduleRotationRulesAutomaticallyAfterDays = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html#cfn-secretsmanager-rotationschedule-rotationrules-automaticallyafterdays
smrsrrAutomaticallyAfterDays :: Lens' SecretsManagerRotationScheduleRotationRules (Maybe (Val Integer))
smrsrrAutomaticallyAfterDays = lens _secretsManagerRotationScheduleRotationRulesAutomaticallyAfterDays (\s a -> s { _secretsManagerRotationScheduleRotationRulesAutomaticallyAfterDays = a })
