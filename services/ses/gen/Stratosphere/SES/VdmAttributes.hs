module Stratosphere.SES.VdmAttributes (
        module Exports, VdmAttributes(..), mkVdmAttributes
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.VdmAttributes.DashboardAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.VdmAttributes.GuardianAttributesProperty as Exports
import Stratosphere.ResourceProperties
data VdmAttributes
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-vdmattributes.html>
    VdmAttributes {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-vdmattributes.html#cfn-ses-vdmattributes-dashboardattributes>
                   dashboardAttributes :: (Prelude.Maybe DashboardAttributesProperty),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-vdmattributes.html#cfn-ses-vdmattributes-guardianattributes>
                   guardianAttributes :: (Prelude.Maybe GuardianAttributesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVdmAttributes :: VdmAttributes
mkVdmAttributes
  = VdmAttributes
      {dashboardAttributes = Prelude.Nothing,
       guardianAttributes = Prelude.Nothing}
instance ToResourceProperties VdmAttributes where
  toResourceProperties VdmAttributes {..}
    = ResourceProperties
        {awsType = "AWS::SES::VdmAttributes", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DashboardAttributes" Prelude.<$> dashboardAttributes,
                            (JSON..=) "GuardianAttributes" Prelude.<$> guardianAttributes])}
instance JSON.ToJSON VdmAttributes where
  toJSON VdmAttributes {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DashboardAttributes" Prelude.<$> dashboardAttributes,
               (JSON..=) "GuardianAttributes" Prelude.<$> guardianAttributes]))
instance Property "DashboardAttributes" VdmAttributes where
  type PropertyType "DashboardAttributes" VdmAttributes = DashboardAttributesProperty
  set newValue VdmAttributes {..}
    = VdmAttributes {dashboardAttributes = Prelude.pure newValue, ..}
instance Property "GuardianAttributes" VdmAttributes where
  type PropertyType "GuardianAttributes" VdmAttributes = GuardianAttributesProperty
  set newValue VdmAttributes {..}
    = VdmAttributes {guardianAttributes = Prelude.pure newValue, ..}