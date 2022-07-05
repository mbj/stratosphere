{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deploymentstrategy.html

module Stratosphere.Resources.AppConfigDeploymentStrategy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppConfigDeploymentStrategyTags

-- | Full data type definition for AppConfigDeploymentStrategy. See
-- 'appConfigDeploymentStrategy' for a more convenient constructor.
data AppConfigDeploymentStrategy =
  AppConfigDeploymentStrategy
  { _appConfigDeploymentStrategyDeploymentDurationInMinutes :: Val Double
  , _appConfigDeploymentStrategyDescription :: Maybe (Val Text)
  , _appConfigDeploymentStrategyFinalBakeTimeInMinutes :: Maybe (Val Double)
  , _appConfigDeploymentStrategyGrowthFactor :: Val Double
  , _appConfigDeploymentStrategyGrowthType :: Maybe (Val Text)
  , _appConfigDeploymentStrategyName :: Val Text
  , _appConfigDeploymentStrategyReplicateTo :: Val Text
  , _appConfigDeploymentStrategyTags :: Maybe [AppConfigDeploymentStrategyTags]
  } deriving (Show, Eq)

instance ToResourceProperties AppConfigDeploymentStrategy where
  toResourceProperties AppConfigDeploymentStrategy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppConfig::DeploymentStrategy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DeploymentDurationInMinutes",) . toJSON) _appConfigDeploymentStrategyDeploymentDurationInMinutes
        , fmap (("Description",) . toJSON) _appConfigDeploymentStrategyDescription
        , fmap (("FinalBakeTimeInMinutes",) . toJSON) _appConfigDeploymentStrategyFinalBakeTimeInMinutes
        , (Just . ("GrowthFactor",) . toJSON) _appConfigDeploymentStrategyGrowthFactor
        , fmap (("GrowthType",) . toJSON) _appConfigDeploymentStrategyGrowthType
        , (Just . ("Name",) . toJSON) _appConfigDeploymentStrategyName
        , (Just . ("ReplicateTo",) . toJSON) _appConfigDeploymentStrategyReplicateTo
        , fmap (("Tags",) . toJSON) _appConfigDeploymentStrategyTags
        ]
    }

-- | Constructor for 'AppConfigDeploymentStrategy' containing required fields
-- as arguments.
appConfigDeploymentStrategy
  :: Val Double -- ^ 'acdsDeploymentDurationInMinutes'
  -> Val Double -- ^ 'acdsGrowthFactor'
  -> Val Text -- ^ 'acdsName'
  -> Val Text -- ^ 'acdsReplicateTo'
  -> AppConfigDeploymentStrategy
appConfigDeploymentStrategy deploymentDurationInMinutesarg growthFactorarg namearg replicateToarg =
  AppConfigDeploymentStrategy
  { _appConfigDeploymentStrategyDeploymentDurationInMinutes = deploymentDurationInMinutesarg
  , _appConfigDeploymentStrategyDescription = Nothing
  , _appConfigDeploymentStrategyFinalBakeTimeInMinutes = Nothing
  , _appConfigDeploymentStrategyGrowthFactor = growthFactorarg
  , _appConfigDeploymentStrategyGrowthType = Nothing
  , _appConfigDeploymentStrategyName = namearg
  , _appConfigDeploymentStrategyReplicateTo = replicateToarg
  , _appConfigDeploymentStrategyTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deploymentstrategy.html#cfn-appconfig-deploymentstrategy-deploymentdurationinminutes
acdsDeploymentDurationInMinutes :: Lens' AppConfigDeploymentStrategy (Val Double)
acdsDeploymentDurationInMinutes = lens _appConfigDeploymentStrategyDeploymentDurationInMinutes (\s a -> s { _appConfigDeploymentStrategyDeploymentDurationInMinutes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deploymentstrategy.html#cfn-appconfig-deploymentstrategy-description
acdsDescription :: Lens' AppConfigDeploymentStrategy (Maybe (Val Text))
acdsDescription = lens _appConfigDeploymentStrategyDescription (\s a -> s { _appConfigDeploymentStrategyDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deploymentstrategy.html#cfn-appconfig-deploymentstrategy-finalbaketimeinminutes
acdsFinalBakeTimeInMinutes :: Lens' AppConfigDeploymentStrategy (Maybe (Val Double))
acdsFinalBakeTimeInMinutes = lens _appConfigDeploymentStrategyFinalBakeTimeInMinutes (\s a -> s { _appConfigDeploymentStrategyFinalBakeTimeInMinutes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deploymentstrategy.html#cfn-appconfig-deploymentstrategy-growthfactor
acdsGrowthFactor :: Lens' AppConfigDeploymentStrategy (Val Double)
acdsGrowthFactor = lens _appConfigDeploymentStrategyGrowthFactor (\s a -> s { _appConfigDeploymentStrategyGrowthFactor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deploymentstrategy.html#cfn-appconfig-deploymentstrategy-growthtype
acdsGrowthType :: Lens' AppConfigDeploymentStrategy (Maybe (Val Text))
acdsGrowthType = lens _appConfigDeploymentStrategyGrowthType (\s a -> s { _appConfigDeploymentStrategyGrowthType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deploymentstrategy.html#cfn-appconfig-deploymentstrategy-name
acdsName :: Lens' AppConfigDeploymentStrategy (Val Text)
acdsName = lens _appConfigDeploymentStrategyName (\s a -> s { _appConfigDeploymentStrategyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deploymentstrategy.html#cfn-appconfig-deploymentstrategy-replicateto
acdsReplicateTo :: Lens' AppConfigDeploymentStrategy (Val Text)
acdsReplicateTo = lens _appConfigDeploymentStrategyReplicateTo (\s a -> s { _appConfigDeploymentStrategyReplicateTo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deploymentstrategy.html#cfn-appconfig-deploymentstrategy-tags
acdsTags :: Lens' AppConfigDeploymentStrategy (Maybe [AppConfigDeploymentStrategyTags])
acdsTags = lens _appConfigDeploymentStrategyTags (\s a -> s { _appConfigDeploymentStrategyTags = a })
