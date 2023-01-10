
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html

module Stratosphere.ResourceProperties.GlueMLTransformFindMatchesParameters where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueMLTransformFindMatchesParameters. See
-- 'glueMLTransformFindMatchesParameters' for a more convenient constructor.
data GlueMLTransformFindMatchesParameters =
  GlueMLTransformFindMatchesParameters
  { _glueMLTransformFindMatchesParametersAccuracyCostTradeoff :: Maybe (Val Double)
  , _glueMLTransformFindMatchesParametersEnforceProvidedLabels :: Maybe (Val Bool)
  , _glueMLTransformFindMatchesParametersPrecisionRecallTradeoff :: Maybe (Val Double)
  , _glueMLTransformFindMatchesParametersPrimaryKeyColumnName :: Val Text
  } deriving (Show, Eq)

instance ToJSON GlueMLTransformFindMatchesParameters where
  toJSON GlueMLTransformFindMatchesParameters{..} =
    object $
    catMaybes
    [ fmap (("AccuracyCostTradeoff",) . toJSON) _glueMLTransformFindMatchesParametersAccuracyCostTradeoff
    , fmap (("EnforceProvidedLabels",) . toJSON) _glueMLTransformFindMatchesParametersEnforceProvidedLabels
    , fmap (("PrecisionRecallTradeoff",) . toJSON) _glueMLTransformFindMatchesParametersPrecisionRecallTradeoff
    , (Just . ("PrimaryKeyColumnName",) . toJSON) _glueMLTransformFindMatchesParametersPrimaryKeyColumnName
    ]

-- | Constructor for 'GlueMLTransformFindMatchesParameters' containing
-- required fields as arguments.
glueMLTransformFindMatchesParameters
  :: Val Text -- ^ 'gmltfmpPrimaryKeyColumnName'
  -> GlueMLTransformFindMatchesParameters
glueMLTransformFindMatchesParameters primaryKeyColumnNamearg =
  GlueMLTransformFindMatchesParameters
  { _glueMLTransformFindMatchesParametersAccuracyCostTradeoff = Nothing
  , _glueMLTransformFindMatchesParametersEnforceProvidedLabels = Nothing
  , _glueMLTransformFindMatchesParametersPrecisionRecallTradeoff = Nothing
  , _glueMLTransformFindMatchesParametersPrimaryKeyColumnName = primaryKeyColumnNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-accuracycosttradeoff
gmltfmpAccuracyCostTradeoff :: Lens' GlueMLTransformFindMatchesParameters (Maybe (Val Double))
gmltfmpAccuracyCostTradeoff = lens _glueMLTransformFindMatchesParametersAccuracyCostTradeoff (\s a -> s { _glueMLTransformFindMatchesParametersAccuracyCostTradeoff = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-enforceprovidedlabels
gmltfmpEnforceProvidedLabels :: Lens' GlueMLTransformFindMatchesParameters (Maybe (Val Bool))
gmltfmpEnforceProvidedLabels = lens _glueMLTransformFindMatchesParametersEnforceProvidedLabels (\s a -> s { _glueMLTransformFindMatchesParametersEnforceProvidedLabels = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-precisionrecalltradeoff
gmltfmpPrecisionRecallTradeoff :: Lens' GlueMLTransformFindMatchesParameters (Maybe (Val Double))
gmltfmpPrecisionRecallTradeoff = lens _glueMLTransformFindMatchesParametersPrecisionRecallTradeoff (\s a -> s { _glueMLTransformFindMatchesParametersPrecisionRecallTradeoff = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-primarykeycolumnname
gmltfmpPrimaryKeyColumnName :: Lens' GlueMLTransformFindMatchesParameters (Val Text)
gmltfmpPrimaryKeyColumnName = lens _glueMLTransformFindMatchesParametersPrimaryKeyColumnName (\s a -> s { _glueMLTransformFindMatchesParametersPrimaryKeyColumnName = a })
