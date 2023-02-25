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
  = VdmOptionsProperty {dashboardOptions :: (Prelude.Maybe DashboardOptionsProperty),
                        guardianOptions :: (Prelude.Maybe GuardianOptionsProperty)}
mkVdmOptionsProperty :: VdmOptionsProperty
mkVdmOptionsProperty
  = VdmOptionsProperty
      {dashboardOptions = Prelude.Nothing,
       guardianOptions = Prelude.Nothing}
instance ToResourceProperties VdmOptionsProperty where
  toResourceProperties VdmOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet.VdmOptions",
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