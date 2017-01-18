{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html

module Stratosphere.Resources.RDSDBClusterParameterGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RDSDBClusterParameterGroup. See
-- | 'rdsdbClusterParameterGroup' for a more convenient constructor.
data RDSDBClusterParameterGroup =
  RDSDBClusterParameterGroup
  { _rDSDBClusterParameterGroupDescription :: Val Text
  , _rDSDBClusterParameterGroupFamily :: Val Text
  , _rDSDBClusterParameterGroupParameters :: Object
  , _rDSDBClusterParameterGroupTags :: Maybe [Tag]
  } deriving (Show, Eq, Generic)

instance ToJSON RDSDBClusterParameterGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON RDSDBClusterParameterGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'RDSDBClusterParameterGroup' containing required fields
-- | as arguments.
rdsdbClusterParameterGroup
  :: Val Text -- ^ 'rdsdbcpgDescription'
  -> Val Text -- ^ 'rdsdbcpgFamily'
  -> Object -- ^ 'rdsdbcpgParameters'
  -> RDSDBClusterParameterGroup
rdsdbClusterParameterGroup descriptionarg familyarg parametersarg =
  RDSDBClusterParameterGroup
  { _rDSDBClusterParameterGroupDescription = descriptionarg
  , _rDSDBClusterParameterGroupFamily = familyarg
  , _rDSDBClusterParameterGroupParameters = parametersarg
  , _rDSDBClusterParameterGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-description
rdsdbcpgDescription :: Lens' RDSDBClusterParameterGroup (Val Text)
rdsdbcpgDescription = lens _rDSDBClusterParameterGroupDescription (\s a -> s { _rDSDBClusterParameterGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-family
rdsdbcpgFamily :: Lens' RDSDBClusterParameterGroup (Val Text)
rdsdbcpgFamily = lens _rDSDBClusterParameterGroupFamily (\s a -> s { _rDSDBClusterParameterGroupFamily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-parameters
rdsdbcpgParameters :: Lens' RDSDBClusterParameterGroup Object
rdsdbcpgParameters = lens _rDSDBClusterParameterGroupParameters (\s a -> s { _rDSDBClusterParameterGroupParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-tags
rdsdbcpgTags :: Lens' RDSDBClusterParameterGroup (Maybe [Tag])
rdsdbcpgTags = lens _rDSDBClusterParameterGroupTags (\s a -> s { _rDSDBClusterParameterGroupTags = a })
