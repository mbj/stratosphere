
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html

module Stratosphere.ResourceProperties.GlueClassifierCsvClassifier where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GlueClassifierCsvClassifier. See
-- 'glueClassifierCsvClassifier' for a more convenient constructor.
data GlueClassifierCsvClassifier =
  GlueClassifierCsvClassifier
  { _glueClassifierCsvClassifierAllowSingleColumn :: Maybe (Val Bool)
  , _glueClassifierCsvClassifierContainsHeader :: Maybe (Val Text)
  , _glueClassifierCsvClassifierDelimiter :: Maybe (Val Text)
  , _glueClassifierCsvClassifierDisableValueTrimming :: Maybe (Val Bool)
  , _glueClassifierCsvClassifierHeader :: Maybe (ValList Text)
  , _glueClassifierCsvClassifierName :: Maybe (Val Text)
  , _glueClassifierCsvClassifierQuoteSymbol :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueClassifierCsvClassifier where
  toJSON GlueClassifierCsvClassifier{..} =
    object $
    catMaybes
    [ fmap (("AllowSingleColumn",) . toJSON) _glueClassifierCsvClassifierAllowSingleColumn
    , fmap (("ContainsHeader",) . toJSON) _glueClassifierCsvClassifierContainsHeader
    , fmap (("Delimiter",) . toJSON) _glueClassifierCsvClassifierDelimiter
    , fmap (("DisableValueTrimming",) . toJSON) _glueClassifierCsvClassifierDisableValueTrimming
    , fmap (("Header",) . toJSON) _glueClassifierCsvClassifierHeader
    , fmap (("Name",) . toJSON) _glueClassifierCsvClassifierName
    , fmap (("QuoteSymbol",) . toJSON) _glueClassifierCsvClassifierQuoteSymbol
    ]

-- | Constructor for 'GlueClassifierCsvClassifier' containing required fields
-- as arguments.
glueClassifierCsvClassifier
  :: GlueClassifierCsvClassifier
glueClassifierCsvClassifier  =
  GlueClassifierCsvClassifier
  { _glueClassifierCsvClassifierAllowSingleColumn = Nothing
  , _glueClassifierCsvClassifierContainsHeader = Nothing
  , _glueClassifierCsvClassifierDelimiter = Nothing
  , _glueClassifierCsvClassifierDisableValueTrimming = Nothing
  , _glueClassifierCsvClassifierHeader = Nothing
  , _glueClassifierCsvClassifierName = Nothing
  , _glueClassifierCsvClassifierQuoteSymbol = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-allowsinglecolumn
gcccAllowSingleColumn :: Lens' GlueClassifierCsvClassifier (Maybe (Val Bool))
gcccAllowSingleColumn = lens _glueClassifierCsvClassifierAllowSingleColumn (\s a -> s { _glueClassifierCsvClassifierAllowSingleColumn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-containsheader
gcccContainsHeader :: Lens' GlueClassifierCsvClassifier (Maybe (Val Text))
gcccContainsHeader = lens _glueClassifierCsvClassifierContainsHeader (\s a -> s { _glueClassifierCsvClassifierContainsHeader = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-delimiter
gcccDelimiter :: Lens' GlueClassifierCsvClassifier (Maybe (Val Text))
gcccDelimiter = lens _glueClassifierCsvClassifierDelimiter (\s a -> s { _glueClassifierCsvClassifierDelimiter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-disablevaluetrimming
gcccDisableValueTrimming :: Lens' GlueClassifierCsvClassifier (Maybe (Val Bool))
gcccDisableValueTrimming = lens _glueClassifierCsvClassifierDisableValueTrimming (\s a -> s { _glueClassifierCsvClassifierDisableValueTrimming = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-header
gcccHeader :: Lens' GlueClassifierCsvClassifier (Maybe (ValList Text))
gcccHeader = lens _glueClassifierCsvClassifierHeader (\s a -> s { _glueClassifierCsvClassifierHeader = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-name
gcccName :: Lens' GlueClassifierCsvClassifier (Maybe (Val Text))
gcccName = lens _glueClassifierCsvClassifierName (\s a -> s { _glueClassifierCsvClassifierName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-quotesymbol
gcccQuoteSymbol :: Lens' GlueClassifierCsvClassifier (Maybe (Val Text))
gcccQuoteSymbol = lens _glueClassifierCsvClassifierQuoteSymbol (\s a -> s { _glueClassifierCsvClassifierQuoteSymbol = a })
