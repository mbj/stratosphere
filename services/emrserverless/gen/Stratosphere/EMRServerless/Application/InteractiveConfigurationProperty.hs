module Stratosphere.EMRServerless.Application.InteractiveConfigurationProperty (
        InteractiveConfigurationProperty(..),
        mkInteractiveConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InteractiveConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-interactiveconfiguration.html>
    InteractiveConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-interactiveconfiguration.html#cfn-emrserverless-application-interactiveconfiguration-livyendpointenabled>
                                      livyEndpointEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-interactiveconfiguration.html#cfn-emrserverless-application-interactiveconfiguration-studioenabled>
                                      studioEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInteractiveConfigurationProperty ::
  InteractiveConfigurationProperty
mkInteractiveConfigurationProperty
  = InteractiveConfigurationProperty
      {haddock_workaround_ = (), livyEndpointEnabled = Prelude.Nothing,
       studioEnabled = Prelude.Nothing}
instance ToResourceProperties InteractiveConfigurationProperty where
  toResourceProperties InteractiveConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.InteractiveConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LivyEndpointEnabled" Prelude.<$> livyEndpointEnabled,
                            (JSON..=) "StudioEnabled" Prelude.<$> studioEnabled])}
instance JSON.ToJSON InteractiveConfigurationProperty where
  toJSON InteractiveConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LivyEndpointEnabled" Prelude.<$> livyEndpointEnabled,
               (JSON..=) "StudioEnabled" Prelude.<$> studioEnabled]))
instance Property "LivyEndpointEnabled" InteractiveConfigurationProperty where
  type PropertyType "LivyEndpointEnabled" InteractiveConfigurationProperty = Value Prelude.Bool
  set newValue InteractiveConfigurationProperty {..}
    = InteractiveConfigurationProperty
        {livyEndpointEnabled = Prelude.pure newValue, ..}
instance Property "StudioEnabled" InteractiveConfigurationProperty where
  type PropertyType "StudioEnabled" InteractiveConfigurationProperty = Value Prelude.Bool
  set newValue InteractiveConfigurationProperty {..}
    = InteractiveConfigurationProperty
        {studioEnabled = Prelude.pure newValue, ..}