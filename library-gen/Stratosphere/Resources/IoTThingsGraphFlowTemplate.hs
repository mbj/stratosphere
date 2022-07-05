{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotthingsgraph-flowtemplate.html

module Stratosphere.Resources.IoTThingsGraphFlowTemplate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTThingsGraphFlowTemplateDefinitionDocument

-- | Full data type definition for IoTThingsGraphFlowTemplate. See
-- 'ioTThingsGraphFlowTemplate' for a more convenient constructor.
data IoTThingsGraphFlowTemplate =
  IoTThingsGraphFlowTemplate
  { _ioTThingsGraphFlowTemplateCompatibleNamespaceVersion :: Maybe (Val Double)
  , _ioTThingsGraphFlowTemplateDefinition :: IoTThingsGraphFlowTemplateDefinitionDocument
  } deriving (Show, Eq)

instance ToResourceProperties IoTThingsGraphFlowTemplate where
  toResourceProperties IoTThingsGraphFlowTemplate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoTThingsGraph::FlowTemplate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CompatibleNamespaceVersion",) . toJSON) _ioTThingsGraphFlowTemplateCompatibleNamespaceVersion
        , (Just . ("Definition",) . toJSON) _ioTThingsGraphFlowTemplateDefinition
        ]
    }

-- | Constructor for 'IoTThingsGraphFlowTemplate' containing required fields
-- as arguments.
ioTThingsGraphFlowTemplate
  :: IoTThingsGraphFlowTemplateDefinitionDocument -- ^ 'ittgftDefinition'
  -> IoTThingsGraphFlowTemplate
ioTThingsGraphFlowTemplate definitionarg =
  IoTThingsGraphFlowTemplate
  { _ioTThingsGraphFlowTemplateCompatibleNamespaceVersion = Nothing
  , _ioTThingsGraphFlowTemplateDefinition = definitionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotthingsgraph-flowtemplate.html#cfn-iotthingsgraph-flowtemplate-compatiblenamespaceversion
ittgftCompatibleNamespaceVersion :: Lens' IoTThingsGraphFlowTemplate (Maybe (Val Double))
ittgftCompatibleNamespaceVersion = lens _ioTThingsGraphFlowTemplateCompatibleNamespaceVersion (\s a -> s { _ioTThingsGraphFlowTemplateCompatibleNamespaceVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotthingsgraph-flowtemplate.html#cfn-iotthingsgraph-flowtemplate-definition
ittgftDefinition :: Lens' IoTThingsGraphFlowTemplate IoTThingsGraphFlowTemplateDefinitionDocument
ittgftDefinition = lens _ioTThingsGraphFlowTemplateDefinition (\s a -> s { _ioTThingsGraphFlowTemplateDefinition = a })
