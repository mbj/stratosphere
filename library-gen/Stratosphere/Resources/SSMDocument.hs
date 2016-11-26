{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html

module Stratosphere.Resources.SSMDocument where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SSMDocument. See 'ssmDocument' for a more
-- | convenient constructor.
data SSMDocument =
  SSMDocument
  { _sSMDocumentContent :: Object
  , _sSMDocumentDocumentType :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON SSMDocument where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

instance FromJSON SSMDocument where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

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
