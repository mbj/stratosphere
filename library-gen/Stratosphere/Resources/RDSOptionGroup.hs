{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html

module Stratosphere.Resources.RDSOptionGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.RDSOptionGroupOptionConfiguration
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RDSOptionGroup. See 'rdsOptionGroup' for a
-- more convenient constructor.
data RDSOptionGroup =
  RDSOptionGroup
  { _rDSOptionGroupEngineName :: Val Text
  , _rDSOptionGroupMajorEngineVersion :: Val Text
  , _rDSOptionGroupOptionConfigurations :: [RDSOptionGroupOptionConfiguration]
  , _rDSOptionGroupOptionGroupDescription :: Val Text
  , _rDSOptionGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties RDSOptionGroup where
  toResourceProperties RDSOptionGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::RDS::OptionGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("EngineName",) . toJSON) _rDSOptionGroupEngineName
        , (Just . ("MajorEngineVersion",) . toJSON) _rDSOptionGroupMajorEngineVersion
        , (Just . ("OptionConfigurations",) . toJSON) _rDSOptionGroupOptionConfigurations
        , (Just . ("OptionGroupDescription",) . toJSON) _rDSOptionGroupOptionGroupDescription
        , fmap (("Tags",) . toJSON) _rDSOptionGroupTags
        ]
    }

-- | Constructor for 'RDSOptionGroup' containing required fields as arguments.
rdsOptionGroup
  :: Val Text -- ^ 'rdsogEngineName'
  -> Val Text -- ^ 'rdsogMajorEngineVersion'
  -> [RDSOptionGroupOptionConfiguration] -- ^ 'rdsogOptionConfigurations'
  -> Val Text -- ^ 'rdsogOptionGroupDescription'
  -> RDSOptionGroup
rdsOptionGroup engineNamearg majorEngineVersionarg optionConfigurationsarg optionGroupDescriptionarg =
  RDSOptionGroup
  { _rDSOptionGroupEngineName = engineNamearg
  , _rDSOptionGroupMajorEngineVersion = majorEngineVersionarg
  , _rDSOptionGroupOptionConfigurations = optionConfigurationsarg
  , _rDSOptionGroupOptionGroupDescription = optionGroupDescriptionarg
  , _rDSOptionGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-enginename
rdsogEngineName :: Lens' RDSOptionGroup (Val Text)
rdsogEngineName = lens _rDSOptionGroupEngineName (\s a -> s { _rDSOptionGroupEngineName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-majorengineversion
rdsogMajorEngineVersion :: Lens' RDSOptionGroup (Val Text)
rdsogMajorEngineVersion = lens _rDSOptionGroupMajorEngineVersion (\s a -> s { _rDSOptionGroupMajorEngineVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-optionconfigurations
rdsogOptionConfigurations :: Lens' RDSOptionGroup [RDSOptionGroupOptionConfiguration]
rdsogOptionConfigurations = lens _rDSOptionGroupOptionConfigurations (\s a -> s { _rDSOptionGroupOptionConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-optiongroupdescription
rdsogOptionGroupDescription :: Lens' RDSOptionGroup (Val Text)
rdsogOptionGroupDescription = lens _rDSOptionGroupOptionGroupDescription (\s a -> s { _rDSOptionGroupOptionGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-tags
rdsogTags :: Lens' RDSOptionGroup (Maybe [Tag])
rdsogTags = lens _rDSOptionGroupTags (\s a -> s { _rDSOptionGroupTags = a })
