{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetVariable where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetDatasetContentVersionValue
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetOutputFileUriValue

-- | Full data type definition for IoTAnalyticsDatasetVariable. See
-- 'ioTAnalyticsDatasetVariable' for a more convenient constructor.
data IoTAnalyticsDatasetVariable =
  IoTAnalyticsDatasetVariable
  { _ioTAnalyticsDatasetVariableDatasetContentVersionValue :: Maybe IoTAnalyticsDatasetDatasetContentVersionValue
  , _ioTAnalyticsDatasetVariableDoubleValue :: Maybe (Val Double)
  , _ioTAnalyticsDatasetVariableOutputFileUriValue :: Maybe IoTAnalyticsDatasetOutputFileUriValue
  , _ioTAnalyticsDatasetVariableStringValue :: Maybe (Val Text)
  , _ioTAnalyticsDatasetVariableVariableName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetVariable where
  toJSON IoTAnalyticsDatasetVariable{..} =
    object $
    catMaybes
    [ fmap (("DatasetContentVersionValue",) . toJSON) _ioTAnalyticsDatasetVariableDatasetContentVersionValue
    , fmap (("DoubleValue",) . toJSON . fmap Double') _ioTAnalyticsDatasetVariableDoubleValue
    , fmap (("OutputFileUriValue",) . toJSON) _ioTAnalyticsDatasetVariableOutputFileUriValue
    , fmap (("StringValue",) . toJSON) _ioTAnalyticsDatasetVariableStringValue
    , (Just . ("VariableName",) . toJSON) _ioTAnalyticsDatasetVariableVariableName
    ]

-- | Constructor for 'IoTAnalyticsDatasetVariable' containing required fields
-- as arguments.
ioTAnalyticsDatasetVariable
  :: Val Text -- ^ 'itadvVariableName'
  -> IoTAnalyticsDatasetVariable
ioTAnalyticsDatasetVariable variableNamearg =
  IoTAnalyticsDatasetVariable
  { _ioTAnalyticsDatasetVariableDatasetContentVersionValue = Nothing
  , _ioTAnalyticsDatasetVariableDoubleValue = Nothing
  , _ioTAnalyticsDatasetVariableOutputFileUriValue = Nothing
  , _ioTAnalyticsDatasetVariableStringValue = Nothing
  , _ioTAnalyticsDatasetVariableVariableName = variableNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-datasetcontentversionvalue
itadvDatasetContentVersionValue :: Lens' IoTAnalyticsDatasetVariable (Maybe IoTAnalyticsDatasetDatasetContentVersionValue)
itadvDatasetContentVersionValue = lens _ioTAnalyticsDatasetVariableDatasetContentVersionValue (\s a -> s { _ioTAnalyticsDatasetVariableDatasetContentVersionValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-doublevalue
itadvDoubleValue :: Lens' IoTAnalyticsDatasetVariable (Maybe (Val Double))
itadvDoubleValue = lens _ioTAnalyticsDatasetVariableDoubleValue (\s a -> s { _ioTAnalyticsDatasetVariableDoubleValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-outputfileurivalue
itadvOutputFileUriValue :: Lens' IoTAnalyticsDatasetVariable (Maybe IoTAnalyticsDatasetOutputFileUriValue)
itadvOutputFileUriValue = lens _ioTAnalyticsDatasetVariableOutputFileUriValue (\s a -> s { _ioTAnalyticsDatasetVariableOutputFileUriValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-stringvalue
itadvStringValue :: Lens' IoTAnalyticsDatasetVariable (Maybe (Val Text))
itadvStringValue = lens _ioTAnalyticsDatasetVariableStringValue (\s a -> s { _ioTAnalyticsDatasetVariableStringValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-variablename
itadvVariableName :: Lens' IoTAnalyticsDatasetVariable (Val Text)
itadvVariableName = lens _ioTAnalyticsDatasetVariableVariableName (\s a -> s { _ioTAnalyticsDatasetVariableVariableName = a })
