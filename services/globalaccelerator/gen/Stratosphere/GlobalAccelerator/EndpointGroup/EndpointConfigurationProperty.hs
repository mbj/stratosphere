module Stratosphere.GlobalAccelerator.EndpointGroup.EndpointConfigurationProperty (
        EndpointConfigurationProperty(..), mkEndpointConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-endpointgroup-endpointconfiguration.html>
    EndpointConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-endpointgroup-endpointconfiguration.html#cfn-globalaccelerator-endpointgroup-endpointconfiguration-attachmentarn>
                                   attachmentArn :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-endpointgroup-endpointconfiguration.html#cfn-globalaccelerator-endpointgroup-endpointconfiguration-clientippreservationenabled>
                                   clientIPPreservationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-endpointgroup-endpointconfiguration.html#cfn-globalaccelerator-endpointgroup-endpointconfiguration-endpointid>
                                   endpointId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-endpointgroup-endpointconfiguration.html#cfn-globalaccelerator-endpointgroup-endpointconfiguration-weight>
                                   weight :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpointConfigurationProperty ::
  Value Prelude.Text -> EndpointConfigurationProperty
mkEndpointConfigurationProperty endpointId
  = EndpointConfigurationProperty
      {haddock_workaround_ = (), endpointId = endpointId,
       attachmentArn = Prelude.Nothing,
       clientIPPreservationEnabled = Prelude.Nothing,
       weight = Prelude.Nothing}
instance ToResourceProperties EndpointConfigurationProperty where
  toResourceProperties EndpointConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GlobalAccelerator::EndpointGroup.EndpointConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointId" JSON..= endpointId]
                           (Prelude.catMaybes
                              [(JSON..=) "AttachmentArn" Prelude.<$> attachmentArn,
                               (JSON..=) "ClientIPPreservationEnabled"
                                 Prelude.<$> clientIPPreservationEnabled,
                               (JSON..=) "Weight" Prelude.<$> weight]))}
instance JSON.ToJSON EndpointConfigurationProperty where
  toJSON EndpointConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointId" JSON..= endpointId]
              (Prelude.catMaybes
                 [(JSON..=) "AttachmentArn" Prelude.<$> attachmentArn,
                  (JSON..=) "ClientIPPreservationEnabled"
                    Prelude.<$> clientIPPreservationEnabled,
                  (JSON..=) "Weight" Prelude.<$> weight])))
instance Property "AttachmentArn" EndpointConfigurationProperty where
  type PropertyType "AttachmentArn" EndpointConfigurationProperty = Value Prelude.Text
  set newValue EndpointConfigurationProperty {..}
    = EndpointConfigurationProperty
        {attachmentArn = Prelude.pure newValue, ..}
instance Property "ClientIPPreservationEnabled" EndpointConfigurationProperty where
  type PropertyType "ClientIPPreservationEnabled" EndpointConfigurationProperty = Value Prelude.Bool
  set newValue EndpointConfigurationProperty {..}
    = EndpointConfigurationProperty
        {clientIPPreservationEnabled = Prelude.pure newValue, ..}
instance Property "EndpointId" EndpointConfigurationProperty where
  type PropertyType "EndpointId" EndpointConfigurationProperty = Value Prelude.Text
  set newValue EndpointConfigurationProperty {..}
    = EndpointConfigurationProperty {endpointId = newValue, ..}
instance Property "Weight" EndpointConfigurationProperty where
  type PropertyType "Weight" EndpointConfigurationProperty = Value Prelude.Integer
  set newValue EndpointConfigurationProperty {..}
    = EndpointConfigurationProperty
        {weight = Prelude.pure newValue, ..}