{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-property-redshift-clusterparametergroup-parameter.html

module Stratosphere.ResourceProperties.RedshiftClusterParameterGroupParameter where

import Stratosphere.ResourceImports


-- | Full data type definition for RedshiftClusterParameterGroupParameter. See
-- 'redshiftClusterParameterGroupParameter' for a more convenient
-- constructor.
data RedshiftClusterParameterGroupParameter =
  RedshiftClusterParameterGroupParameter
  { _redshiftClusterParameterGroupParameterParameterName :: Val Text
  , _redshiftClusterParameterGroupParameterParameterValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON RedshiftClusterParameterGroupParameter where
  toJSON RedshiftClusterParameterGroupParameter{..} =
    object $
    catMaybes
    [ (Just . ("ParameterName",) . toJSON) _redshiftClusterParameterGroupParameterParameterName
    , (Just . ("ParameterValue",) . toJSON) _redshiftClusterParameterGroupParameterParameterValue
    ]

instance FromJSON RedshiftClusterParameterGroupParameter where
  parseJSON (Object obj) =
    RedshiftClusterParameterGroupParameter <$>
      (obj .: "ParameterName") <*>
      (obj .: "ParameterValue")
  parseJSON _ = mempty

-- | Constructor for 'RedshiftClusterParameterGroupParameter' containing
-- required fields as arguments.
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
