
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html

module Stratosphere.ResourceProperties.GlueMLTransformTransformParameters where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueMLTransformFindMatchesParameters

-- | Full data type definition for GlueMLTransformTransformParameters. See
-- 'glueMLTransformTransformParameters' for a more convenient constructor.
data GlueMLTransformTransformParameters =
  GlueMLTransformTransformParameters
  { _glueMLTransformTransformParametersFindMatchesParameters :: Maybe GlueMLTransformFindMatchesParameters
  , _glueMLTransformTransformParametersTransformType :: Val Text
  } deriving (Show, Eq)

instance ToJSON GlueMLTransformTransformParameters where
  toJSON GlueMLTransformTransformParameters{..} =
    object $
    catMaybes
    [ fmap (("FindMatchesParameters",) . toJSON) _glueMLTransformTransformParametersFindMatchesParameters
    , (Just . ("TransformType",) . toJSON) _glueMLTransformTransformParametersTransformType
    ]

-- | Constructor for 'GlueMLTransformTransformParameters' containing required
-- fields as arguments.
glueMLTransformTransformParameters
  :: Val Text -- ^ 'gmlttpTransformType'
  -> GlueMLTransformTransformParameters
glueMLTransformTransformParameters transformTypearg =
  GlueMLTransformTransformParameters
  { _glueMLTransformTransformParametersFindMatchesParameters = Nothing
  , _glueMLTransformTransformParametersTransformType = transformTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters
gmlttpFindMatchesParameters :: Lens' GlueMLTransformTransformParameters (Maybe GlueMLTransformFindMatchesParameters)
gmlttpFindMatchesParameters = lens _glueMLTransformTransformParametersFindMatchesParameters (\s a -> s { _glueMLTransformTransformParametersFindMatchesParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html#cfn-glue-mltransform-transformparameters-transformtype
gmlttpTransformType :: Lens' GlueMLTransformTransformParameters (Val Text)
gmlttpTransformType = lens _glueMLTransformTransformParametersTransformType (\s a -> s { _glueMLTransformTransformParametersTransformType = a })
