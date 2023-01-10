
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersettings.html

module Stratosphere.ResourceProperties.ECSClusterClusterSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSClusterClusterSettings. See
-- 'ecsClusterClusterSettings' for a more convenient constructor.
data ECSClusterClusterSettings =
  ECSClusterClusterSettings
  { _eCSClusterClusterSettingsName :: Maybe (Val Text)
  , _eCSClusterClusterSettingsValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSClusterClusterSettings where
  toJSON ECSClusterClusterSettings{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _eCSClusterClusterSettingsName
    , fmap (("Value",) . toJSON) _eCSClusterClusterSettingsValue
    ]

-- | Constructor for 'ECSClusterClusterSettings' containing required fields as
-- arguments.
ecsClusterClusterSettings
  :: ECSClusterClusterSettings
ecsClusterClusterSettings  =
  ECSClusterClusterSettings
  { _eCSClusterClusterSettingsName = Nothing
  , _eCSClusterClusterSettingsValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersettings.html#cfn-ecs-cluster-clustersettings-name
ecsccsName :: Lens' ECSClusterClusterSettings (Maybe (Val Text))
ecsccsName = lens _eCSClusterClusterSettingsName (\s a -> s { _eCSClusterClusterSettingsName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersettings.html#cfn-ecs-cluster-clustersettings-value
ecsccsValue :: Lens' ECSClusterClusterSettings (Maybe (Val Text))
ecsccsValue = lens _eCSClusterClusterSettingsValue (\s a -> s { _eCSClusterClusterSettingsValue = a })
