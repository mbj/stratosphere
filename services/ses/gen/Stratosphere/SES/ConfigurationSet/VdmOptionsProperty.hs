module Stratosphere.SES.ConfigurationSet.VdmOptionsProperty (
        module Exports, VdmOptionsProperty(..), mkVdmOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSet.DashboardOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSet.GuardianOptionsProperty as Exports
import Stratosphere.ResourceProperties
data VdmOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-vdmoptions.html>
    VdmOptionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-vdmoptions.html#cfn-ses-configurationset-vdmoptions-dashboardoptions>
                        dashboardOptions :: (Prelude.Maybe DashboardOptionsProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-vdmoptions.html#cfn-ses-configurationset-vdmoptions-guardianoptions>
                        guardianOptions :: (Prelude.Maybe GuardianOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVdmOptionsProperty :: VdmOptionsProperty
mkVdmOptionsProperty
  = VdmOptionsProperty
      {haddock_workaround_ = (), dashboardOptions = Prelude.Nothing,
       guardianOptions = Prelude.Nothing}
instance ToResourceProperties VdmOptionsProperty where
  toResourceProperties VdmOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet.VdmOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DashboardOptions" Prelude.<$> dashboardOptions,
                            (JSON..=) "GuardianOptions" Prelude.<$> guardianOptions])}
instance JSON.ToJSON VdmOptionsProperty where
  toJSON VdmOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DashboardOptions" Prelude.<$> dashboardOptions,
               (JSON..=) "GuardianOptions" Prelude.<$> guardianOptions]))
instance Property "DashboardOptions" VdmOptionsProperty where
  type PropertyType "DashboardOptions" VdmOptionsProperty = DashboardOptionsProperty
  set newValue VdmOptionsProperty {..}
    = VdmOptionsProperty {dashboardOptions = Prelude.pure newValue, ..}
instance Property "GuardianOptions" VdmOptionsProperty where
  type PropertyType "GuardianOptions" VdmOptionsProperty = GuardianOptionsProperty
  set newValue VdmOptionsProperty {..}
    = VdmOptionsProperty {guardianOptions = Prelude.pure newValue, ..}