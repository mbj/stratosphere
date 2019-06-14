{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotthingsgraph-flowtemplate-definitiondocument.html

module Stratosphere.ResourceProperties.IoTThingsGraphFlowTemplateDefinitionDocument where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- IoTThingsGraphFlowTemplateDefinitionDocument. See
-- 'ioTThingsGraphFlowTemplateDefinitionDocument' for a more convenient
-- constructor.
data IoTThingsGraphFlowTemplateDefinitionDocument =
  IoTThingsGraphFlowTemplateDefinitionDocument
  { _ioTThingsGraphFlowTemplateDefinitionDocumentLanguage :: Val Text
  , _ioTThingsGraphFlowTemplateDefinitionDocumentText :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTThingsGraphFlowTemplateDefinitionDocument where
  toJSON IoTThingsGraphFlowTemplateDefinitionDocument{..} =
    object $
    catMaybes
    [ (Just . ("Language",) . toJSON) _ioTThingsGraphFlowTemplateDefinitionDocumentLanguage
    , (Just . ("Text",) . toJSON) _ioTThingsGraphFlowTemplateDefinitionDocumentText
    ]

-- | Constructor for 'IoTThingsGraphFlowTemplateDefinitionDocument' containing
-- required fields as arguments.
ioTThingsGraphFlowTemplateDefinitionDocument
  :: Val Text -- ^ 'ittgftddLanguage'
  -> Val Text -- ^ 'ittgftddText'
  -> IoTThingsGraphFlowTemplateDefinitionDocument
ioTThingsGraphFlowTemplateDefinitionDocument languagearg textarg =
  IoTThingsGraphFlowTemplateDefinitionDocument
  { _ioTThingsGraphFlowTemplateDefinitionDocumentLanguage = languagearg
  , _ioTThingsGraphFlowTemplateDefinitionDocumentText = textarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotthingsgraph-flowtemplate-definitiondocument.html#cfn-iotthingsgraph-flowtemplate-definitiondocument-language
ittgftddLanguage :: Lens' IoTThingsGraphFlowTemplateDefinitionDocument (Val Text)
ittgftddLanguage = lens _ioTThingsGraphFlowTemplateDefinitionDocumentLanguage (\s a -> s { _ioTThingsGraphFlowTemplateDefinitionDocumentLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotthingsgraph-flowtemplate-definitiondocument.html#cfn-iotthingsgraph-flowtemplate-definitiondocument-text
ittgftddText :: Lens' IoTThingsGraphFlowTemplateDefinitionDocument (Val Text)
ittgftddText = lens _ioTThingsGraphFlowTemplateDefinitionDocumentText (\s a -> s { _ioTThingsGraphFlowTemplateDefinitionDocumentText = a })
