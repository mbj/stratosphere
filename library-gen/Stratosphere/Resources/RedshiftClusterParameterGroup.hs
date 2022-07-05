{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clusterparametergroup.html

module Stratosphere.Resources.RedshiftClusterParameterGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.RedshiftClusterParameterGroupParameter
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RedshiftClusterParameterGroup. See
-- 'redshiftClusterParameterGroup' for a more convenient constructor.
data RedshiftClusterParameterGroup =
  RedshiftClusterParameterGroup
  { _redshiftClusterParameterGroupDescription :: Val Text
  , _redshiftClusterParameterGroupParameterGroupFamily :: Val Text
  , _redshiftClusterParameterGroupParameters :: Maybe [RedshiftClusterParameterGroupParameter]
  , _redshiftClusterParameterGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties RedshiftClusterParameterGroup where
  toResourceProperties RedshiftClusterParameterGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Redshift::ClusterParameterGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Description",) . toJSON) _redshiftClusterParameterGroupDescription
        , (Just . ("ParameterGroupFamily",) . toJSON) _redshiftClusterParameterGroupParameterGroupFamily
        , fmap (("Parameters",) . toJSON) _redshiftClusterParameterGroupParameters
        , fmap (("Tags",) . toJSON) _redshiftClusterParameterGroupTags
        ]
    }

-- | Constructor for 'RedshiftClusterParameterGroup' containing required
-- fields as arguments.
redshiftClusterParameterGroup
  :: Val Text -- ^ 'rcpgDescription'
  -> Val Text -- ^ 'rcpgParameterGroupFamily'
  -> RedshiftClusterParameterGroup
redshiftClusterParameterGroup descriptionarg parameterGroupFamilyarg =
  RedshiftClusterParameterGroup
  { _redshiftClusterParameterGroupDescription = descriptionarg
  , _redshiftClusterParameterGroupParameterGroupFamily = parameterGroupFamilyarg
  , _redshiftClusterParameterGroupParameters = Nothing
  , _redshiftClusterParameterGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clusterparametergroup.html#cfn-redshift-clusterparametergroup-description
rcpgDescription :: Lens' RedshiftClusterParameterGroup (Val Text)
rcpgDescription = lens _redshiftClusterParameterGroupDescription (\s a -> s { _redshiftClusterParameterGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clusterparametergroup.html#cfn-redshift-clusterparametergroup-parametergroupfamily
rcpgParameterGroupFamily :: Lens' RedshiftClusterParameterGroup (Val Text)
rcpgParameterGroupFamily = lens _redshiftClusterParameterGroupParameterGroupFamily (\s a -> s { _redshiftClusterParameterGroupParameterGroupFamily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clusterparametergroup.html#cfn-redshift-clusterparametergroup-parameters
rcpgParameters :: Lens' RedshiftClusterParameterGroup (Maybe [RedshiftClusterParameterGroupParameter])
rcpgParameters = lens _redshiftClusterParameterGroupParameters (\s a -> s { _redshiftClusterParameterGroupParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clusterparametergroup.html#cfn-redshift-clusterparametergroup-tags
rcpgTags :: Lens' RedshiftClusterParameterGroup (Maybe [Tag])
rcpgTags = lens _redshiftClusterParameterGroupTags (\s a -> s { _redshiftClusterParameterGroupTags = a })
