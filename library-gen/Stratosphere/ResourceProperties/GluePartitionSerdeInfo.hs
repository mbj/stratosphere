
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html

module Stratosphere.ResourceProperties.GluePartitionSerdeInfo where

import Stratosphere.ResourceImports


-- | Full data type definition for GluePartitionSerdeInfo. See
-- 'gluePartitionSerdeInfo' for a more convenient constructor.
data GluePartitionSerdeInfo =
  GluePartitionSerdeInfo
  { _gluePartitionSerdeInfoName :: Maybe (Val Text)
  , _gluePartitionSerdeInfoParameters :: Maybe Object
  , _gluePartitionSerdeInfoSerializationLibrary :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GluePartitionSerdeInfo where
  toJSON GluePartitionSerdeInfo{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _gluePartitionSerdeInfoName
    , fmap (("Parameters",) . toJSON) _gluePartitionSerdeInfoParameters
    , fmap (("SerializationLibrary",) . toJSON) _gluePartitionSerdeInfoSerializationLibrary
    ]

-- | Constructor for 'GluePartitionSerdeInfo' containing required fields as
-- arguments.
gluePartitionSerdeInfo
  :: GluePartitionSerdeInfo
gluePartitionSerdeInfo  =
  GluePartitionSerdeInfo
  { _gluePartitionSerdeInfoName = Nothing
  , _gluePartitionSerdeInfoParameters = Nothing
  , _gluePartitionSerdeInfoSerializationLibrary = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html#cfn-glue-partition-serdeinfo-name
gpsiName :: Lens' GluePartitionSerdeInfo (Maybe (Val Text))
gpsiName = lens _gluePartitionSerdeInfoName (\s a -> s { _gluePartitionSerdeInfoName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html#cfn-glue-partition-serdeinfo-parameters
gpsiParameters :: Lens' GluePartitionSerdeInfo (Maybe Object)
gpsiParameters = lens _gluePartitionSerdeInfoParameters (\s a -> s { _gluePartitionSerdeInfoParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html#cfn-glue-partition-serdeinfo-serializationlibrary
gpsiSerializationLibrary :: Lens' GluePartitionSerdeInfo (Maybe (Val Text))
gpsiSerializationLibrary = lens _gluePartitionSerdeInfoSerializationLibrary (\s a -> s { _gluePartitionSerdeInfoSerializationLibrary = a })
