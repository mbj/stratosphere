module Stratosphere.MediaConnect.Flow (
        module Exports, Flow(..), mkFlow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.FailoverConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.MaintenanceProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.MediaStreamProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.SourceProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.SourceMonitoringConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.VpcInterfaceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Flow
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flow.html>
    Flow {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flow.html#cfn-mediaconnect-flow-availabilityzone>
          availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flow.html#cfn-mediaconnect-flow-maintenance>
          maintenance :: (Prelude.Maybe MaintenanceProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flow.html#cfn-mediaconnect-flow-mediastreams>
          mediaStreams :: (Prelude.Maybe [MediaStreamProperty]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flow.html#cfn-mediaconnect-flow-name>
          name :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flow.html#cfn-mediaconnect-flow-source>
          source :: SourceProperty,
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flow.html#cfn-mediaconnect-flow-sourcefailoverconfig>
          sourceFailoverConfig :: (Prelude.Maybe FailoverConfigProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flow.html#cfn-mediaconnect-flow-sourcemonitoringconfig>
          sourceMonitoringConfig :: (Prelude.Maybe SourceMonitoringConfigProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flow.html#cfn-mediaconnect-flow-vpcinterfaces>
          vpcInterfaces :: (Prelude.Maybe [VpcInterfaceProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlow :: Value Prelude.Text -> SourceProperty -> Flow
mkFlow name source
  = Flow
      {haddock_workaround_ = (), name = name, source = source,
       availabilityZone = Prelude.Nothing, maintenance = Prelude.Nothing,
       mediaStreams = Prelude.Nothing,
       sourceFailoverConfig = Prelude.Nothing,
       sourceMonitoringConfig = Prelude.Nothing,
       vpcInterfaces = Prelude.Nothing}
instance ToResourceProperties Flow where
  toResourceProperties Flow {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "Maintenance" Prelude.<$> maintenance,
                               (JSON..=) "MediaStreams" Prelude.<$> mediaStreams,
                               (JSON..=) "SourceFailoverConfig" Prelude.<$> sourceFailoverConfig,
                               (JSON..=) "SourceMonitoringConfig"
                                 Prelude.<$> sourceMonitoringConfig,
                               (JSON..=) "VpcInterfaces" Prelude.<$> vpcInterfaces]))}
instance JSON.ToJSON Flow where
  toJSON Flow {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "Maintenance" Prelude.<$> maintenance,
                  (JSON..=) "MediaStreams" Prelude.<$> mediaStreams,
                  (JSON..=) "SourceFailoverConfig" Prelude.<$> sourceFailoverConfig,
                  (JSON..=) "SourceMonitoringConfig"
                    Prelude.<$> sourceMonitoringConfig,
                  (JSON..=) "VpcInterfaces" Prelude.<$> vpcInterfaces])))
instance Property "AvailabilityZone" Flow where
  type PropertyType "AvailabilityZone" Flow = Value Prelude.Text
  set newValue Flow {..}
    = Flow {availabilityZone = Prelude.pure newValue, ..}
instance Property "Maintenance" Flow where
  type PropertyType "Maintenance" Flow = MaintenanceProperty
  set newValue Flow {..}
    = Flow {maintenance = Prelude.pure newValue, ..}
instance Property "MediaStreams" Flow where
  type PropertyType "MediaStreams" Flow = [MediaStreamProperty]
  set newValue Flow {..}
    = Flow {mediaStreams = Prelude.pure newValue, ..}
instance Property "Name" Flow where
  type PropertyType "Name" Flow = Value Prelude.Text
  set newValue Flow {..} = Flow {name = newValue, ..}
instance Property "Source" Flow where
  type PropertyType "Source" Flow = SourceProperty
  set newValue Flow {..} = Flow {source = newValue, ..}
instance Property "SourceFailoverConfig" Flow where
  type PropertyType "SourceFailoverConfig" Flow = FailoverConfigProperty
  set newValue Flow {..}
    = Flow {sourceFailoverConfig = Prelude.pure newValue, ..}
instance Property "SourceMonitoringConfig" Flow where
  type PropertyType "SourceMonitoringConfig" Flow = SourceMonitoringConfigProperty
  set newValue Flow {..}
    = Flow {sourceMonitoringConfig = Prelude.pure newValue, ..}
instance Property "VpcInterfaces" Flow where
  type PropertyType "VpcInterfaces" Flow = [VpcInterfaceProperty]
  set newValue Flow {..}
    = Flow {vpcInterfaces = Prelude.pure newValue, ..}