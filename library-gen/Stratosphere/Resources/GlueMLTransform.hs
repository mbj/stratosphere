{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html

module Stratosphere.Resources.GlueMLTransform where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueMLTransformInputRecordTables
import Stratosphere.ResourceProperties.GlueMLTransformTransformParameters

-- | Full data type definition for GlueMLTransform. See 'glueMLTransform' for
-- a more convenient constructor.
data GlueMLTransform =
  GlueMLTransform
  { _glueMLTransformDescription :: Maybe (Val Text)
  , _glueMLTransformGlueVersion :: Maybe (Val Text)
  , _glueMLTransformInputRecordTables :: GlueMLTransformInputRecordTables
  , _glueMLTransformMaxCapacity :: Maybe (Val Double)
  , _glueMLTransformMaxRetries :: Maybe (Val Integer)
  , _glueMLTransformName :: Maybe (Val Text)
  , _glueMLTransformNumberOfWorkers :: Maybe (Val Integer)
  , _glueMLTransformRole :: Val Text
  , _glueMLTransformTags :: Maybe Object
  , _glueMLTransformTimeout :: Maybe (Val Integer)
  , _glueMLTransformTransformParameters :: GlueMLTransformTransformParameters
  , _glueMLTransformWorkerType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties GlueMLTransform where
  toResourceProperties GlueMLTransform{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::MLTransform"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _glueMLTransformDescription
        , fmap (("GlueVersion",) . toJSON) _glueMLTransformGlueVersion
        , (Just . ("InputRecordTables",) . toJSON) _glueMLTransformInputRecordTables
        , fmap (("MaxCapacity",) . toJSON) _glueMLTransformMaxCapacity
        , fmap (("MaxRetries",) . toJSON) _glueMLTransformMaxRetries
        , fmap (("Name",) . toJSON) _glueMLTransformName
        , fmap (("NumberOfWorkers",) . toJSON) _glueMLTransformNumberOfWorkers
        , (Just . ("Role",) . toJSON) _glueMLTransformRole
        , fmap (("Tags",) . toJSON) _glueMLTransformTags
        , fmap (("Timeout",) . toJSON) _glueMLTransformTimeout
        , (Just . ("TransformParameters",) . toJSON) _glueMLTransformTransformParameters
        , fmap (("WorkerType",) . toJSON) _glueMLTransformWorkerType
        ]
    }

-- | Constructor for 'GlueMLTransform' containing required fields as
-- arguments.
glueMLTransform
  :: GlueMLTransformInputRecordTables -- ^ 'gmltInputRecordTables'
  -> Val Text -- ^ 'gmltRole'
  -> GlueMLTransformTransformParameters -- ^ 'gmltTransformParameters'
  -> GlueMLTransform
glueMLTransform inputRecordTablesarg rolearg transformParametersarg =
  GlueMLTransform
  { _glueMLTransformDescription = Nothing
  , _glueMLTransformGlueVersion = Nothing
  , _glueMLTransformInputRecordTables = inputRecordTablesarg
  , _glueMLTransformMaxCapacity = Nothing
  , _glueMLTransformMaxRetries = Nothing
  , _glueMLTransformName = Nothing
  , _glueMLTransformNumberOfWorkers = Nothing
  , _glueMLTransformRole = rolearg
  , _glueMLTransformTags = Nothing
  , _glueMLTransformTimeout = Nothing
  , _glueMLTransformTransformParameters = transformParametersarg
  , _glueMLTransformWorkerType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-description
gmltDescription :: Lens' GlueMLTransform (Maybe (Val Text))
gmltDescription = lens _glueMLTransformDescription (\s a -> s { _glueMLTransformDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-glueversion
gmltGlueVersion :: Lens' GlueMLTransform (Maybe (Val Text))
gmltGlueVersion = lens _glueMLTransformGlueVersion (\s a -> s { _glueMLTransformGlueVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-inputrecordtables
gmltInputRecordTables :: Lens' GlueMLTransform GlueMLTransformInputRecordTables
gmltInputRecordTables = lens _glueMLTransformInputRecordTables (\s a -> s { _glueMLTransformInputRecordTables = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-maxcapacity
gmltMaxCapacity :: Lens' GlueMLTransform (Maybe (Val Double))
gmltMaxCapacity = lens _glueMLTransformMaxCapacity (\s a -> s { _glueMLTransformMaxCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-maxretries
gmltMaxRetries :: Lens' GlueMLTransform (Maybe (Val Integer))
gmltMaxRetries = lens _glueMLTransformMaxRetries (\s a -> s { _glueMLTransformMaxRetries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-name
gmltName :: Lens' GlueMLTransform (Maybe (Val Text))
gmltName = lens _glueMLTransformName (\s a -> s { _glueMLTransformName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-numberofworkers
gmltNumberOfWorkers :: Lens' GlueMLTransform (Maybe (Val Integer))
gmltNumberOfWorkers = lens _glueMLTransformNumberOfWorkers (\s a -> s { _glueMLTransformNumberOfWorkers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-role
gmltRole :: Lens' GlueMLTransform (Val Text)
gmltRole = lens _glueMLTransformRole (\s a -> s { _glueMLTransformRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-tags
gmltTags :: Lens' GlueMLTransform (Maybe Object)
gmltTags = lens _glueMLTransformTags (\s a -> s { _glueMLTransformTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-timeout
gmltTimeout :: Lens' GlueMLTransform (Maybe (Val Integer))
gmltTimeout = lens _glueMLTransformTimeout (\s a -> s { _glueMLTransformTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-transformparameters
gmltTransformParameters :: Lens' GlueMLTransform GlueMLTransformTransformParameters
gmltTransformParameters = lens _glueMLTransformTransformParameters (\s a -> s { _glueMLTransformTransformParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-workertype
gmltWorkerType :: Lens' GlueMLTransform (Maybe (Val Text))
gmltWorkerType = lens _glueMLTransformWorkerType (\s a -> s { _glueMLTransformWorkerType = a })
