{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html

module Stratosphere.Resources.NeptuneDBParameterGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for NeptuneDBParameterGroup. See
-- 'neptuneDBParameterGroup' for a more convenient constructor.
data NeptuneDBParameterGroup =
  NeptuneDBParameterGroup
  { _neptuneDBParameterGroupDescription :: Val Text
  , _neptuneDBParameterGroupFamily :: Val Text
  , _neptuneDBParameterGroupName :: Maybe (Val Text)
  , _neptuneDBParameterGroupParameters :: Object
  , _neptuneDBParameterGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties NeptuneDBParameterGroup where
  toResourceProperties NeptuneDBParameterGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Neptune::DBParameterGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Description",) . toJSON) _neptuneDBParameterGroupDescription
        , (Just . ("Family",) . toJSON) _neptuneDBParameterGroupFamily
        , fmap (("Name",) . toJSON) _neptuneDBParameterGroupName
        , (Just . ("Parameters",) . toJSON) _neptuneDBParameterGroupParameters
        , fmap (("Tags",) . toJSON) _neptuneDBParameterGroupTags
        ]
    }

-- | Constructor for 'NeptuneDBParameterGroup' containing required fields as
-- arguments.
neptuneDBParameterGroup
  :: Val Text -- ^ 'ndbpgDescription'
  -> Val Text -- ^ 'ndbpgFamily'
  -> Object -- ^ 'ndbpgParameters'
  -> NeptuneDBParameterGroup
neptuneDBParameterGroup descriptionarg familyarg parametersarg =
  NeptuneDBParameterGroup
  { _neptuneDBParameterGroupDescription = descriptionarg
  , _neptuneDBParameterGroupFamily = familyarg
  , _neptuneDBParameterGroupName = Nothing
  , _neptuneDBParameterGroupParameters = parametersarg
  , _neptuneDBParameterGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-description
ndbpgDescription :: Lens' NeptuneDBParameterGroup (Val Text)
ndbpgDescription = lens _neptuneDBParameterGroupDescription (\s a -> s { _neptuneDBParameterGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-family
ndbpgFamily :: Lens' NeptuneDBParameterGroup (Val Text)
ndbpgFamily = lens _neptuneDBParameterGroupFamily (\s a -> s { _neptuneDBParameterGroupFamily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-name
ndbpgName :: Lens' NeptuneDBParameterGroup (Maybe (Val Text))
ndbpgName = lens _neptuneDBParameterGroupName (\s a -> s { _neptuneDBParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-parameters
ndbpgParameters :: Lens' NeptuneDBParameterGroup Object
ndbpgParameters = lens _neptuneDBParameterGroupParameters (\s a -> s { _neptuneDBParameterGroupParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-tags
ndbpgTags :: Lens' NeptuneDBParameterGroup (Maybe [Tag])
ndbpgTags = lens _neptuneDBParameterGroupTags (\s a -> s { _neptuneDBParameterGroupTags = a })
