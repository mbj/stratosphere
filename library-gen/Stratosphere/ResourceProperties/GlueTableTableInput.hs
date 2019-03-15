{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html

module Stratosphere.ResourceProperties.GlueTableTableInput where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueTableColumn
import Stratosphere.ResourceProperties.GlueTableStorageDescriptor

-- | Full data type definition for GlueTableTableInput. See
-- 'glueTableTableInput' for a more convenient constructor.
data GlueTableTableInput =
  GlueTableTableInput
  { _glueTableTableInputDescription :: Maybe (Val Text)
  , _glueTableTableInputName :: Maybe (Val Text)
  , _glueTableTableInputOwner :: Maybe (Val Text)
  , _glueTableTableInputParameters :: Maybe Object
  , _glueTableTableInputPartitionKeys :: Maybe [GlueTableColumn]
  , _glueTableTableInputRetention :: Maybe (Val Integer)
  , _glueTableTableInputStorageDescriptor :: Maybe GlueTableStorageDescriptor
  , _glueTableTableInputTableType :: Maybe (Val Text)
  , _glueTableTableInputViewExpandedText :: Maybe (Val Text)
  , _glueTableTableInputViewOriginalText :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueTableTableInput where
  toJSON GlueTableTableInput{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _glueTableTableInputDescription
    , fmap (("Name",) . toJSON) _glueTableTableInputName
    , fmap (("Owner",) . toJSON) _glueTableTableInputOwner
    , fmap (("Parameters",) . toJSON) _glueTableTableInputParameters
    , fmap (("PartitionKeys",) . toJSON) _glueTableTableInputPartitionKeys
    , fmap (("Retention",) . toJSON) _glueTableTableInputRetention
    , fmap (("StorageDescriptor",) . toJSON) _glueTableTableInputStorageDescriptor
    , fmap (("TableType",) . toJSON) _glueTableTableInputTableType
    , fmap (("ViewExpandedText",) . toJSON) _glueTableTableInputViewExpandedText
    , fmap (("ViewOriginalText",) . toJSON) _glueTableTableInputViewOriginalText
    ]

-- | Constructor for 'GlueTableTableInput' containing required fields as
-- arguments.
glueTableTableInput
  :: GlueTableTableInput
glueTableTableInput  =
  GlueTableTableInput
  { _glueTableTableInputDescription = Nothing
  , _glueTableTableInputName = Nothing
  , _glueTableTableInputOwner = Nothing
  , _glueTableTableInputParameters = Nothing
  , _glueTableTableInputPartitionKeys = Nothing
  , _glueTableTableInputRetention = Nothing
  , _glueTableTableInputStorageDescriptor = Nothing
  , _glueTableTableInputTableType = Nothing
  , _glueTableTableInputViewExpandedText = Nothing
  , _glueTableTableInputViewOriginalText = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-description
gttiDescription :: Lens' GlueTableTableInput (Maybe (Val Text))
gttiDescription = lens _glueTableTableInputDescription (\s a -> s { _glueTableTableInputDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-name
gttiName :: Lens' GlueTableTableInput (Maybe (Val Text))
gttiName = lens _glueTableTableInputName (\s a -> s { _glueTableTableInputName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-owner
gttiOwner :: Lens' GlueTableTableInput (Maybe (Val Text))
gttiOwner = lens _glueTableTableInputOwner (\s a -> s { _glueTableTableInputOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-parameters
gttiParameters :: Lens' GlueTableTableInput (Maybe Object)
gttiParameters = lens _glueTableTableInputParameters (\s a -> s { _glueTableTableInputParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-partitionkeys
gttiPartitionKeys :: Lens' GlueTableTableInput (Maybe [GlueTableColumn])
gttiPartitionKeys = lens _glueTableTableInputPartitionKeys (\s a -> s { _glueTableTableInputPartitionKeys = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-retention
gttiRetention :: Lens' GlueTableTableInput (Maybe (Val Integer))
gttiRetention = lens _glueTableTableInputRetention (\s a -> s { _glueTableTableInputRetention = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-storagedescriptor
gttiStorageDescriptor :: Lens' GlueTableTableInput (Maybe GlueTableStorageDescriptor)
gttiStorageDescriptor = lens _glueTableTableInputStorageDescriptor (\s a -> s { _glueTableTableInputStorageDescriptor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-tabletype
gttiTableType :: Lens' GlueTableTableInput (Maybe (Val Text))
gttiTableType = lens _glueTableTableInputTableType (\s a -> s { _glueTableTableInputTableType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-viewexpandedtext
gttiViewExpandedText :: Lens' GlueTableTableInput (Maybe (Val Text))
gttiViewExpandedText = lens _glueTableTableInputViewExpandedText (\s a -> s { _glueTableTableInputViewExpandedText = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-vieworiginaltext
gttiViewOriginalText :: Lens' GlueTableTableInput (Maybe (Val Text))
gttiViewOriginalText = lens _glueTableTableInputViewOriginalText (\s a -> s { _glueTableTableInputViewOriginalText = a })
