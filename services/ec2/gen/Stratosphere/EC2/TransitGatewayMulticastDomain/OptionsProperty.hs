module Stratosphere.EC2.TransitGatewayMulticastDomain.OptionsProperty (
        OptionsProperty(..), mkOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OptionsProperty
  = OptionsProperty {autoAcceptSharedAssociations :: (Prelude.Maybe (Value Prelude.Text)),
                     igmpv2Support :: (Prelude.Maybe (Value Prelude.Text)),
                     staticSourcesSupport :: (Prelude.Maybe (Value Prelude.Text))}
mkOptionsProperty :: OptionsProperty
mkOptionsProperty
  = OptionsProperty
      {autoAcceptSharedAssociations = Prelude.Nothing,
       igmpv2Support = Prelude.Nothing,
       staticSourcesSupport = Prelude.Nothing}
instance ToResourceProperties OptionsProperty where
  toResourceProperties OptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayMulticastDomain.Options",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoAcceptSharedAssociations"
                              Prelude.<$> autoAcceptSharedAssociations,
                            (JSON..=) "Igmpv2Support" Prelude.<$> igmpv2Support,
                            (JSON..=) "StaticSourcesSupport"
                              Prelude.<$> staticSourcesSupport])}
instance JSON.ToJSON OptionsProperty where
  toJSON OptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoAcceptSharedAssociations"
                 Prelude.<$> autoAcceptSharedAssociations,
               (JSON..=) "Igmpv2Support" Prelude.<$> igmpv2Support,
               (JSON..=) "StaticSourcesSupport"
                 Prelude.<$> staticSourcesSupport]))
instance Property "AutoAcceptSharedAssociations" OptionsProperty where
  type PropertyType "AutoAcceptSharedAssociations" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty
        {autoAcceptSharedAssociations = Prelude.pure newValue, ..}
instance Property "Igmpv2Support" OptionsProperty where
  type PropertyType "Igmpv2Support" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {igmpv2Support = Prelude.pure newValue, ..}
instance Property "StaticSourcesSupport" OptionsProperty where
  type PropertyType "StaticSourcesSupport" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty
        {staticSourcesSupport = Prelude.pure newValue, ..}