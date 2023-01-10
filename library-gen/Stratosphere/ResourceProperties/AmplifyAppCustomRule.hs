
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html

module Stratosphere.ResourceProperties.AmplifyAppCustomRule where

import Stratosphere.ResourceImports


-- | Full data type definition for AmplifyAppCustomRule. See
-- 'amplifyAppCustomRule' for a more convenient constructor.
data AmplifyAppCustomRule =
  AmplifyAppCustomRule
  { _amplifyAppCustomRuleCondition :: Maybe (Val Text)
  , _amplifyAppCustomRuleSource :: Val Text
  , _amplifyAppCustomRuleStatus :: Maybe (Val Text)
  , _amplifyAppCustomRuleTarget :: Val Text
  } deriving (Show, Eq)

instance ToJSON AmplifyAppCustomRule where
  toJSON AmplifyAppCustomRule{..} =
    object $
    catMaybes
    [ fmap (("Condition",) . toJSON) _amplifyAppCustomRuleCondition
    , (Just . ("Source",) . toJSON) _amplifyAppCustomRuleSource
    , fmap (("Status",) . toJSON) _amplifyAppCustomRuleStatus
    , (Just . ("Target",) . toJSON) _amplifyAppCustomRuleTarget
    ]

-- | Constructor for 'AmplifyAppCustomRule' containing required fields as
-- arguments.
amplifyAppCustomRule
  :: Val Text -- ^ 'aacrSource'
  -> Val Text -- ^ 'aacrTarget'
  -> AmplifyAppCustomRule
amplifyAppCustomRule sourcearg targetarg =
  AmplifyAppCustomRule
  { _amplifyAppCustomRuleCondition = Nothing
  , _amplifyAppCustomRuleSource = sourcearg
  , _amplifyAppCustomRuleStatus = Nothing
  , _amplifyAppCustomRuleTarget = targetarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html#cfn-amplify-app-customrule-condition
aacrCondition :: Lens' AmplifyAppCustomRule (Maybe (Val Text))
aacrCondition = lens _amplifyAppCustomRuleCondition (\s a -> s { _amplifyAppCustomRuleCondition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html#cfn-amplify-app-customrule-source
aacrSource :: Lens' AmplifyAppCustomRule (Val Text)
aacrSource = lens _amplifyAppCustomRuleSource (\s a -> s { _amplifyAppCustomRuleSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html#cfn-amplify-app-customrule-status
aacrStatus :: Lens' AmplifyAppCustomRule (Maybe (Val Text))
aacrStatus = lens _amplifyAppCustomRuleStatus (\s a -> s { _amplifyAppCustomRuleStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html#cfn-amplify-app-customrule-target
aacrTarget :: Lens' AmplifyAppCustomRule (Val Text)
aacrTarget = lens _amplifyAppCustomRuleTarget (\s a -> s { _amplifyAppCustomRuleTarget = a })
