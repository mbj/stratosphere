module Stratosphere.MediaPackageV2.OriginEndpoint.ForceEndpointErrorConfigurationProperty (
        ForceEndpointErrorConfigurationProperty(..),
        mkForceEndpointErrorConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ForceEndpointErrorConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-forceendpointerrorconfiguration.html>
    ForceEndpointErrorConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-forceendpointerrorconfiguration.html#cfn-mediapackagev2-originendpoint-forceendpointerrorconfiguration-endpointerrorconditions>
                                             endpointErrorConditions :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkForceEndpointErrorConfigurationProperty ::
  ForceEndpointErrorConfigurationProperty
mkForceEndpointErrorConfigurationProperty
  = ForceEndpointErrorConfigurationProperty
      {haddock_workaround_ = (),
       endpointErrorConditions = Prelude.Nothing}
instance ToResourceProperties ForceEndpointErrorConfigurationProperty where
  toResourceProperties ForceEndpointErrorConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.ForceEndpointErrorConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EndpointErrorConditions"
                              Prelude.<$> endpointErrorConditions])}
instance JSON.ToJSON ForceEndpointErrorConfigurationProperty where
  toJSON ForceEndpointErrorConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EndpointErrorConditions"
                 Prelude.<$> endpointErrorConditions]))
instance Property "EndpointErrorConditions" ForceEndpointErrorConfigurationProperty where
  type PropertyType "EndpointErrorConditions" ForceEndpointErrorConfigurationProperty = ValueList Prelude.Text
  set newValue ForceEndpointErrorConfigurationProperty {..}
    = ForceEndpointErrorConfigurationProperty
        {endpointErrorConditions = Prelude.pure newValue, ..}