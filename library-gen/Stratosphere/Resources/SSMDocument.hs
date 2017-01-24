{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html

module Stratosphere.Resources.SSMDocument where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for SSMDocument. See 'ssmDocument' for a more
-- | convenient constructor.
data SSMDocument =
  SSMDocument
  { _sSMDocumentContent :: Object
  , _sSMDocumentDocumentType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SSMDocument where
  toJSON SSMDocument{..} =
    object
    [ "Content" .= _sSMDocumentContent
    , "DocumentType" .= _sSMDocumentDocumentType
    ]

instance FromJSON SSMDocument where
  parseJSON (Object obj) =
    SSMDocument <$>
      obj .: "Content" <*>
      obj .: "DocumentType"
  parseJSON _ = mempty

-- | Constructor for 'SSMDocument' containing required fields as arguments.
ssmDocument
  :: Object -- ^ 'ssmdContent'
  -> SSMDocument
ssmDocument contentarg =
  SSMDocument
  { _sSMDocumentContent = contentarg
  , _sSMDocumentDocumentType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html#cfn-ssm-document-content
ssmdContent :: Lens' SSMDocument Object
ssmdContent = lens _sSMDocumentContent (\s a -> s { _sSMDocumentContent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html#cfn-ssm-document-documenttype
ssmdDocumentType :: Lens' SSMDocument (Maybe (Val Text))
ssmdDocumentType = lens _sSMDocumentDocumentType (\s a -> s { _sSMDocumentDocumentType = a })
