module Stratosphere.AppFlow.Flow (
        module Exports, Flow(..), mkFlow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.DestinationFlowConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.MetadataCatalogConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.SourceFlowConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.TaskProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.TriggerConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Flow
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html>
    Flow {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-description>
          description :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-destinationflowconfiglist>
          destinationFlowConfigList :: [DestinationFlowConfigProperty],
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-flowname>
          flowName :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-flowstatus>
          flowStatus :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-kmsarn>
          kMSArn :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-metadatacatalogconfig>
          metadataCatalogConfig :: (Prelude.Maybe MetadataCatalogConfigProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-sourceflowconfig>
          sourceFlowConfig :: SourceFlowConfigProperty,
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-tags>
          tags :: (Prelude.Maybe [Tag]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-tasks>
          tasks :: [TaskProperty],
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-flow.html#cfn-appflow-flow-triggerconfig>
          triggerConfig :: TriggerConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlow ::
  [DestinationFlowConfigProperty]
  -> Value Prelude.Text
     -> SourceFlowConfigProperty
        -> [TaskProperty] -> TriggerConfigProperty -> Flow
mkFlow
  destinationFlowConfigList
  flowName
  sourceFlowConfig
  tasks
  triggerConfig
  = Flow
      {haddock_workaround_ = (),
       destinationFlowConfigList = destinationFlowConfigList,
       flowName = flowName, sourceFlowConfig = sourceFlowConfig,
       tasks = tasks, triggerConfig = triggerConfig,
       description = Prelude.Nothing, flowStatus = Prelude.Nothing,
       kMSArn = Prelude.Nothing, metadataCatalogConfig = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Flow where
  toResourceProperties Flow {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationFlowConfigList" JSON..= destinationFlowConfigList,
                            "FlowName" JSON..= flowName,
                            "SourceFlowConfig" JSON..= sourceFlowConfig, "Tasks" JSON..= tasks,
                            "TriggerConfig" JSON..= triggerConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FlowStatus" Prelude.<$> flowStatus,
                               (JSON..=) "KMSArn" Prelude.<$> kMSArn,
                               (JSON..=) "MetadataCatalogConfig"
                                 Prelude.<$> metadataCatalogConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Flow where
  toJSON Flow {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationFlowConfigList" JSON..= destinationFlowConfigList,
               "FlowName" JSON..= flowName,
               "SourceFlowConfig" JSON..= sourceFlowConfig, "Tasks" JSON..= tasks,
               "TriggerConfig" JSON..= triggerConfig]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FlowStatus" Prelude.<$> flowStatus,
                  (JSON..=) "KMSArn" Prelude.<$> kMSArn,
                  (JSON..=) "MetadataCatalogConfig"
                    Prelude.<$> metadataCatalogConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Flow where
  type PropertyType "Description" Flow = Value Prelude.Text
  set newValue Flow {..}
    = Flow {description = Prelude.pure newValue, ..}
instance Property "DestinationFlowConfigList" Flow where
  type PropertyType "DestinationFlowConfigList" Flow = [DestinationFlowConfigProperty]
  set newValue Flow {..}
    = Flow {destinationFlowConfigList = newValue, ..}
instance Property "FlowName" Flow where
  type PropertyType "FlowName" Flow = Value Prelude.Text
  set newValue Flow {..} = Flow {flowName = newValue, ..}
instance Property "FlowStatus" Flow where
  type PropertyType "FlowStatus" Flow = Value Prelude.Text
  set newValue Flow {..}
    = Flow {flowStatus = Prelude.pure newValue, ..}
instance Property "KMSArn" Flow where
  type PropertyType "KMSArn" Flow = Value Prelude.Text
  set newValue Flow {..} = Flow {kMSArn = Prelude.pure newValue, ..}
instance Property "MetadataCatalogConfig" Flow where
  type PropertyType "MetadataCatalogConfig" Flow = MetadataCatalogConfigProperty
  set newValue Flow {..}
    = Flow {metadataCatalogConfig = Prelude.pure newValue, ..}
instance Property "SourceFlowConfig" Flow where
  type PropertyType "SourceFlowConfig" Flow = SourceFlowConfigProperty
  set newValue Flow {..} = Flow {sourceFlowConfig = newValue, ..}
instance Property "Tags" Flow where
  type PropertyType "Tags" Flow = [Tag]
  set newValue Flow {..} = Flow {tags = Prelude.pure newValue, ..}
instance Property "Tasks" Flow where
  type PropertyType "Tasks" Flow = [TaskProperty]
  set newValue Flow {..} = Flow {tasks = newValue, ..}
instance Property "TriggerConfig" Flow where
  type PropertyType "TriggerConfig" Flow = TriggerConfigProperty
  set newValue Flow {..} = Flow {triggerConfig = newValue, ..}