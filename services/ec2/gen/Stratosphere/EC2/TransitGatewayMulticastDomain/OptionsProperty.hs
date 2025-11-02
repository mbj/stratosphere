module Stratosphere.EC2.TransitGatewayMulticastDomain.OptionsProperty (
        OptionsProperty(..), mkOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewaymulticastdomain-options.html>
    OptionsProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewaymulticastdomain-options.html#cfn-ec2-transitgatewaymulticastdomain-options-autoacceptsharedassociations>
                     autoAcceptSharedAssociations :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewaymulticastdomain-options.html#cfn-ec2-transitgatewaymulticastdomain-options-igmpv2support>
                     igmpv2Support :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewaymulticastdomain-options.html#cfn-ec2-transitgatewaymulticastdomain-options-staticsourcessupport>
                     staticSourcesSupport :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOptionsProperty :: OptionsProperty
mkOptionsProperty
  = OptionsProperty
      {haddock_workaround_ = (),
       autoAcceptSharedAssociations = Prelude.Nothing,
       igmpv2Support = Prelude.Nothing,
       staticSourcesSupport = Prelude.Nothing}
instance ToResourceProperties OptionsProperty where
  toResourceProperties OptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayMulticastDomain.Options",
         supportsTags = Prelude.False,
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