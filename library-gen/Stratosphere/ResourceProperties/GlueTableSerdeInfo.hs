{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-serdeinfo.html

module Stratosphere.ResourceProperties.GlueTableSerdeInfo where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueTableSerdeInfo. See
-- 'glueTableSerdeInfo' for a more convenient constructor.
data GlueTableSerdeInfo =
  GlueTableSerdeInfo
  { _glueTableSerdeInfoName :: Maybe (Val Text)
  , _glueTableSerdeInfoParameters :: Maybe Object
  , _glueTableSerdeInfoSerializationLibrary :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueTableSerdeInfo where
  toJSON GlueTableSerdeInfo{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _glueTableSerdeInfoName
    , fmap (("Parameters",) . toJSON) _glueTableSerdeInfoParameters
    , fmap (("SerializationLibrary",) . toJSON) _glueTableSerdeInfoSerializationLibrary
    ]

-- | Constructor for 'GlueTableSerdeInfo' containing required fields as
-- arguments.
glueTableSerdeInfo
  :: GlueTableSerdeInfo
glueTableSerdeInfo  =
  GlueTableSerdeInfo
  { _glueTableSerdeInfoName = Nothing
  , _glueTableSerdeInfoParameters = Nothing
  , _glueTableSerdeInfoSerializationLibrary = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-serdeinfo.html#cfn-glue-table-serdeinfo-name
gtsiName :: Lens' GlueTableSerdeInfo (Maybe (Val Text))
gtsiName = lens _glueTableSerdeInfoName (\s a -> s { _glueTableSerdeInfoName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-serdeinfo.html#cfn-glue-table-serdeinfo-parameters
gtsiParameters :: Lens' GlueTableSerdeInfo (Maybe Object)
gtsiParameters = lens _glueTableSerdeInfoParameters (\s a -> s { _glueTableSerdeInfoParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-serdeinfo.html#cfn-glue-table-serdeinfo-serializationlibrary
gtsiSerializationLibrary :: Lens' GlueTableSerdeInfo (Maybe (Val Text))
gtsiSerializationLibrary = lens _glueTableSerdeInfoSerializationLibrary (\s a -> s { _glueTableSerdeInfoSerializationLibrary = a })
