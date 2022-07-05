{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbclusterparametergroup.html

module Stratosphere.Resources.NeptuneDBClusterParameterGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for NeptuneDBClusterParameterGroup. See
-- 'neptuneDBClusterParameterGroup' for a more convenient constructor.
data NeptuneDBClusterParameterGroup =
  NeptuneDBClusterParameterGroup
  { _neptuneDBClusterParameterGroupDescription :: Val Text
  , _neptuneDBClusterParameterGroupFamily :: Val Text
  , _neptuneDBClusterParameterGroupName :: Maybe (Val Text)
  , _neptuneDBClusterParameterGroupParameters :: Object
  , _neptuneDBClusterParameterGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties NeptuneDBClusterParameterGroup where
  toResourceProperties NeptuneDBClusterParameterGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Neptune::DBClusterParameterGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Description",) . toJSON) _neptuneDBClusterParameterGroupDescription
        , (Just . ("Family",) . toJSON) _neptuneDBClusterParameterGroupFamily
        , fmap (("Name",) . toJSON) _neptuneDBClusterParameterGroupName
        , (Just . ("Parameters",) . toJSON) _neptuneDBClusterParameterGroupParameters
        , fmap (("Tags",) . toJSON) _neptuneDBClusterParameterGroupTags
        ]
    }

-- | Constructor for 'NeptuneDBClusterParameterGroup' containing required
-- fields as arguments.
neptuneDBClusterParameterGroup
  :: Val Text -- ^ 'ndbcpgDescription'
  -> Val Text -- ^ 'ndbcpgFamily'
  -> Object -- ^ 'ndbcpgParameters'
  -> NeptuneDBClusterParameterGroup
neptuneDBClusterParameterGroup descriptionarg familyarg parametersarg =
  NeptuneDBClusterParameterGroup
  { _neptuneDBClusterParameterGroupDescription = descriptionarg
  , _neptuneDBClusterParameterGroupFamily = familyarg
  , _neptuneDBClusterParameterGroupName = Nothing
  , _neptuneDBClusterParameterGroupParameters = parametersarg
  , _neptuneDBClusterParameterGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbclusterparametergroup.html#cfn-neptune-dbclusterparametergroup-description
ndbcpgDescription :: Lens' NeptuneDBClusterParameterGroup (Val Text)
ndbcpgDescription = lens _neptuneDBClusterParameterGroupDescription (\s a -> s { _neptuneDBClusterParameterGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbclusterparametergroup.html#cfn-neptune-dbclusterparametergroup-family
ndbcpgFamily :: Lens' NeptuneDBClusterParameterGroup (Val Text)
ndbcpgFamily = lens _neptuneDBClusterParameterGroupFamily (\s a -> s { _neptuneDBClusterParameterGroupFamily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbclusterparametergroup.html#cfn-neptune-dbclusterparametergroup-name
ndbcpgName :: Lens' NeptuneDBClusterParameterGroup (Maybe (Val Text))
ndbcpgName = lens _neptuneDBClusterParameterGroupName (\s a -> s { _neptuneDBClusterParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbclusterparametergroup.html#cfn-neptune-dbclusterparametergroup-parameters
ndbcpgParameters :: Lens' NeptuneDBClusterParameterGroup Object
ndbcpgParameters = lens _neptuneDBClusterParameterGroupParameters (\s a -> s { _neptuneDBClusterParameterGroupParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbclusterparametergroup.html#cfn-neptune-dbclusterparametergroup-tags
ndbcpgTags :: Lens' NeptuneDBClusterParameterGroup (Maybe [Tag])
ndbcpgTags = lens _neptuneDBClusterParameterGroupTags (\s a -> s { _neptuneDBClusterParameterGroupTags = a })
