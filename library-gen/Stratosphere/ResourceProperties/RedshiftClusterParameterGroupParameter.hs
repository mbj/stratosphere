{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-property-redshift-clusterparametergroup-parameter.html

module Stratosphere.ResourceProperties.RedshiftClusterParameterGroupParameter where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for RedshiftClusterParameterGroupParameter. See
-- | 'redshiftClusterParameterGroupParameter' for a more convenient
-- | constructor.
data RedshiftClusterParameterGroupParameter =
  RedshiftClusterParameterGroupParameter
  { _redshiftClusterParameterGroupParameterParameterName :: Val Text
  , _redshiftClusterParameterGroupParameterParameterValue :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON RedshiftClusterParameterGroupParameter where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

instance FromJSON RedshiftClusterParameterGroupParameter where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

-- | Constructor for 'RedshiftClusterParameterGroupParameter' containing
-- | required fields as arguments.
redshiftClusterParameterGroupParameter
  :: Val Text -- ^ 'rcpgpParameterName'
  -> Val Text -- ^ 'rcpgpParameterValue'
  -> RedshiftClusterParameterGroupParameter
redshiftClusterParameterGroupParameter parameterNamearg parameterValuearg =
  RedshiftClusterParameterGroupParameter
  { _redshiftClusterParameterGroupParameterParameterName = parameterNamearg
  , _redshiftClusterParameterGroupParameterParameterValue = parameterValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-property-redshift-clusterparametergroup-parameter.html#cfn-redshift-clusterparametergroup-parameter-parametername
rcpgpParameterName :: Lens' RedshiftClusterParameterGroupParameter (Val Text)
rcpgpParameterName = lens _redshiftClusterParameterGroupParameterParameterName (\s a -> s { _redshiftClusterParameterGroupParameterParameterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-property-redshift-clusterparametergroup-parameter.html#cfn-redshift-clusterparametergroup-parameter-parametervalue
rcpgpParameterValue :: Lens' RedshiftClusterParameterGroupParameter (Val Text)
rcpgpParameterValue = lens _redshiftClusterParameterGroupParameterParameterValue (\s a -> s { _redshiftClusterParameterGroupParameterParameterValue = a })
