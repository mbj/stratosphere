module Stratosphere.RTBFabric.Link.ModuleParametersProperty (
        module Exports, ModuleParametersProperty(..),
        mkModuleParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.NoBidModuleParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.OpenRtbAttributeModuleParametersProperty as Exports
import Stratosphere.ResourceProperties
data ModuleParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-moduleparameters.html>
    ModuleParametersProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-moduleparameters.html#cfn-rtbfabric-link-moduleparameters-nobid>
                              noBid :: (Prelude.Maybe NoBidModuleParametersProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-moduleparameters.html#cfn-rtbfabric-link-moduleparameters-openrtbattribute>
                              openRtbAttribute :: (Prelude.Maybe OpenRtbAttributeModuleParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModuleParametersProperty :: ModuleParametersProperty
mkModuleParametersProperty
  = ModuleParametersProperty
      {haddock_workaround_ = (), noBid = Prelude.Nothing,
       openRtbAttribute = Prelude.Nothing}
instance ToResourceProperties ModuleParametersProperty where
  toResourceProperties ModuleParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.ModuleParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NoBid" Prelude.<$> noBid,
                            (JSON..=) "OpenRtbAttribute" Prelude.<$> openRtbAttribute])}
instance JSON.ToJSON ModuleParametersProperty where
  toJSON ModuleParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NoBid" Prelude.<$> noBid,
               (JSON..=) "OpenRtbAttribute" Prelude.<$> openRtbAttribute]))
instance Property "NoBid" ModuleParametersProperty where
  type PropertyType "NoBid" ModuleParametersProperty = NoBidModuleParametersProperty
  set newValue ModuleParametersProperty {..}
    = ModuleParametersProperty {noBid = Prelude.pure newValue, ..}
instance Property "OpenRtbAttribute" ModuleParametersProperty where
  type PropertyType "OpenRtbAttribute" ModuleParametersProperty = OpenRtbAttributeModuleParametersProperty
  set newValue ModuleParametersProperty {..}
    = ModuleParametersProperty
        {openRtbAttribute = Prelude.pure newValue, ..}