{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbclusterparametergroup.html

module Stratosphere.Resources.DocDBDBClusterParameterGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DocDBDBClusterParameterGroup. See
-- 'docDBDBClusterParameterGroup' for a more convenient constructor.
data DocDBDBClusterParameterGroup =
  DocDBDBClusterParameterGroup
  { _docDBDBClusterParameterGroupDescription :: Val Text
  , _docDBDBClusterParameterGroupFamily :: Val Text
  , _docDBDBClusterParameterGroupName :: Maybe (Val Text)
  , _docDBDBClusterParameterGroupParameters :: Object
  , _docDBDBClusterParameterGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties DocDBDBClusterParameterGroup where
  toResourceProperties DocDBDBClusterParameterGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::DocDB::DBClusterParameterGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Description",) . toJSON) _docDBDBClusterParameterGroupDescription
        , (Just . ("Family",) . toJSON) _docDBDBClusterParameterGroupFamily
        , fmap (("Name",) . toJSON) _docDBDBClusterParameterGroupName
        , (Just . ("Parameters",) . toJSON) _docDBDBClusterParameterGroupParameters
        , fmap (("Tags",) . toJSON) _docDBDBClusterParameterGroupTags
        ]
    }

-- | Constructor for 'DocDBDBClusterParameterGroup' containing required fields
-- as arguments.
docDBDBClusterParameterGroup
  :: Val Text -- ^ 'ddbdbcpgDescription'
  -> Val Text -- ^ 'ddbdbcpgFamily'
  -> Object -- ^ 'ddbdbcpgParameters'
  -> DocDBDBClusterParameterGroup
docDBDBClusterParameterGroup descriptionarg familyarg parametersarg =
  DocDBDBClusterParameterGroup
  { _docDBDBClusterParameterGroupDescription = descriptionarg
  , _docDBDBClusterParameterGroupFamily = familyarg
  , _docDBDBClusterParameterGroupName = Nothing
  , _docDBDBClusterParameterGroupParameters = parametersarg
  , _docDBDBClusterParameterGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbclusterparametergroup.html#cfn-docdb-dbclusterparametergroup-description
ddbdbcpgDescription :: Lens' DocDBDBClusterParameterGroup (Val Text)
ddbdbcpgDescription = lens _docDBDBClusterParameterGroupDescription (\s a -> s { _docDBDBClusterParameterGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbclusterparametergroup.html#cfn-docdb-dbclusterparametergroup-family
ddbdbcpgFamily :: Lens' DocDBDBClusterParameterGroup (Val Text)
ddbdbcpgFamily = lens _docDBDBClusterParameterGroupFamily (\s a -> s { _docDBDBClusterParameterGroupFamily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbclusterparametergroup.html#cfn-docdb-dbclusterparametergroup-name
ddbdbcpgName :: Lens' DocDBDBClusterParameterGroup (Maybe (Val Text))
ddbdbcpgName = lens _docDBDBClusterParameterGroupName (\s a -> s { _docDBDBClusterParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbclusterparametergroup.html#cfn-docdb-dbclusterparametergroup-parameters
ddbdbcpgParameters :: Lens' DocDBDBClusterParameterGroup Object
ddbdbcpgParameters = lens _docDBDBClusterParameterGroupParameters (\s a -> s { _docDBDBClusterParameterGroupParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbclusterparametergroup.html#cfn-docdb-dbclusterparametergroup-tags
ddbdbcpgTags :: Lens' DocDBDBClusterParameterGroup (Maybe [Tag])
ddbdbcpgTags = lens _docDBDBClusterParameterGroupTags (\s a -> s { _docDBDBClusterParameterGroupTags = a })
