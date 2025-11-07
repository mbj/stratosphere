module Stratosphere.EVS.Environment.VcfHostnamesProperty (
        VcfHostnamesProperty(..), mkVcfHostnamesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VcfHostnamesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-vcfhostnames.html>
    VcfHostnamesProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-vcfhostnames.html#cfn-evs-environment-vcfhostnames-cloudbuilder>
                          cloudBuilder :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-vcfhostnames.html#cfn-evs-environment-vcfhostnames-nsx>
                          nsx :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-vcfhostnames.html#cfn-evs-environment-vcfhostnames-nsxedge1>
                          nsxEdge1 :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-vcfhostnames.html#cfn-evs-environment-vcfhostnames-nsxedge2>
                          nsxEdge2 :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-vcfhostnames.html#cfn-evs-environment-vcfhostnames-nsxmanager1>
                          nsxManager1 :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-vcfhostnames.html#cfn-evs-environment-vcfhostnames-nsxmanager2>
                          nsxManager2 :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-vcfhostnames.html#cfn-evs-environment-vcfhostnames-nsxmanager3>
                          nsxManager3 :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-vcfhostnames.html#cfn-evs-environment-vcfhostnames-sddcmanager>
                          sddcManager :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-vcfhostnames.html#cfn-evs-environment-vcfhostnames-vcenter>
                          vCenter :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVcfHostnamesProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text
                 -> Value Prelude.Text
                    -> Value Prelude.Text -> Value Prelude.Text -> VcfHostnamesProperty
mkVcfHostnamesProperty
  cloudBuilder
  nsx
  nsxEdge1
  nsxEdge2
  nsxManager1
  nsxManager2
  nsxManager3
  sddcManager
  vCenter
  = VcfHostnamesProperty
      {haddock_workaround_ = (), cloudBuilder = cloudBuilder, nsx = nsx,
       nsxEdge1 = nsxEdge1, nsxEdge2 = nsxEdge2,
       nsxManager1 = nsxManager1, nsxManager2 = nsxManager2,
       nsxManager3 = nsxManager3, sddcManager = sddcManager,
       vCenter = vCenter}
instance ToResourceProperties VcfHostnamesProperty where
  toResourceProperties VcfHostnamesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EVS::Environment.VcfHostnames",
         supportsTags = Prelude.False,
         properties = ["CloudBuilder" JSON..= cloudBuilder,
                       "Nsx" JSON..= nsx, "NsxEdge1" JSON..= nsxEdge1,
                       "NsxEdge2" JSON..= nsxEdge2, "NsxManager1" JSON..= nsxManager1,
                       "NsxManager2" JSON..= nsxManager2,
                       "NsxManager3" JSON..= nsxManager3,
                       "SddcManager" JSON..= sddcManager, "VCenter" JSON..= vCenter]}
instance JSON.ToJSON VcfHostnamesProperty where
  toJSON VcfHostnamesProperty {..}
    = JSON.object
        ["CloudBuilder" JSON..= cloudBuilder, "Nsx" JSON..= nsx,
         "NsxEdge1" JSON..= nsxEdge1, "NsxEdge2" JSON..= nsxEdge2,
         "NsxManager1" JSON..= nsxManager1,
         "NsxManager2" JSON..= nsxManager2,
         "NsxManager3" JSON..= nsxManager3,
         "SddcManager" JSON..= sddcManager, "VCenter" JSON..= vCenter]
instance Property "CloudBuilder" VcfHostnamesProperty where
  type PropertyType "CloudBuilder" VcfHostnamesProperty = Value Prelude.Text
  set newValue VcfHostnamesProperty {..}
    = VcfHostnamesProperty {cloudBuilder = newValue, ..}
instance Property "Nsx" VcfHostnamesProperty where
  type PropertyType "Nsx" VcfHostnamesProperty = Value Prelude.Text
  set newValue VcfHostnamesProperty {..}
    = VcfHostnamesProperty {nsx = newValue, ..}
instance Property "NsxEdge1" VcfHostnamesProperty where
  type PropertyType "NsxEdge1" VcfHostnamesProperty = Value Prelude.Text
  set newValue VcfHostnamesProperty {..}
    = VcfHostnamesProperty {nsxEdge1 = newValue, ..}
instance Property "NsxEdge2" VcfHostnamesProperty where
  type PropertyType "NsxEdge2" VcfHostnamesProperty = Value Prelude.Text
  set newValue VcfHostnamesProperty {..}
    = VcfHostnamesProperty {nsxEdge2 = newValue, ..}
instance Property "NsxManager1" VcfHostnamesProperty where
  type PropertyType "NsxManager1" VcfHostnamesProperty = Value Prelude.Text
  set newValue VcfHostnamesProperty {..}
    = VcfHostnamesProperty {nsxManager1 = newValue, ..}
instance Property "NsxManager2" VcfHostnamesProperty where
  type PropertyType "NsxManager2" VcfHostnamesProperty = Value Prelude.Text
  set newValue VcfHostnamesProperty {..}
    = VcfHostnamesProperty {nsxManager2 = newValue, ..}
instance Property "NsxManager3" VcfHostnamesProperty where
  type PropertyType "NsxManager3" VcfHostnamesProperty = Value Prelude.Text
  set newValue VcfHostnamesProperty {..}
    = VcfHostnamesProperty {nsxManager3 = newValue, ..}
instance Property "SddcManager" VcfHostnamesProperty where
  type PropertyType "SddcManager" VcfHostnamesProperty = Value Prelude.Text
  set newValue VcfHostnamesProperty {..}
    = VcfHostnamesProperty {sddcManager = newValue, ..}
instance Property "VCenter" VcfHostnamesProperty where
  type PropertyType "VCenter" VcfHostnamesProperty = Value Prelude.Text
  set newValue VcfHostnamesProperty {..}
    = VcfHostnamesProperty {vCenter = newValue, ..}