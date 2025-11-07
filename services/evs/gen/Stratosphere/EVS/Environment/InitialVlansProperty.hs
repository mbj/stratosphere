module Stratosphere.EVS.Environment.InitialVlansProperty (
        module Exports, InitialVlansProperty(..), mkInitialVlansProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EVS.Environment.InitialVlanInfoProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InitialVlansProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html>
    InitialVlansProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-edgevtep>
                          edgeVTep :: InitialVlanInfoProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-expansionvlan1>
                          expansionVlan1 :: InitialVlanInfoProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-expansionvlan2>
                          expansionVlan2 :: InitialVlanInfoProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-hcx>
                          hcx :: InitialVlanInfoProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-hcxnetworkaclid>
                          hcxNetworkAclId :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-ishcxpublic>
                          isHcxPublic :: (Prelude.Maybe (Value Prelude.Bool)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-nsxuplink>
                          nsxUpLink :: InitialVlanInfoProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-vmotion>
                          vMotion :: InitialVlanInfoProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-vsan>
                          vSan :: InitialVlanInfoProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-vtep>
                          vTep :: InitialVlanInfoProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-vmmanagement>
                          vmManagement :: InitialVlanInfoProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-vmkmanagement>
                          vmkManagement :: InitialVlanInfoProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInitialVlansProperty ::
  InitialVlanInfoProperty
  -> InitialVlanInfoProperty
     -> InitialVlanInfoProperty
        -> InitialVlanInfoProperty
           -> InitialVlanInfoProperty
              -> InitialVlanInfoProperty
                 -> InitialVlanInfoProperty
                    -> InitialVlanInfoProperty
                       -> InitialVlanInfoProperty
                          -> InitialVlanInfoProperty -> InitialVlansProperty
mkInitialVlansProperty
  edgeVTep
  expansionVlan1
  expansionVlan2
  hcx
  nsxUpLink
  vMotion
  vSan
  vTep
  vmManagement
  vmkManagement
  = InitialVlansProperty
      {haddock_workaround_ = (), edgeVTep = edgeVTep,
       expansionVlan1 = expansionVlan1, expansionVlan2 = expansionVlan2,
       hcx = hcx, nsxUpLink = nsxUpLink, vMotion = vMotion, vSan = vSan,
       vTep = vTep, vmManagement = vmManagement,
       vmkManagement = vmkManagement, hcxNetworkAclId = Prelude.Nothing,
       isHcxPublic = Prelude.Nothing}
instance ToResourceProperties InitialVlansProperty where
  toResourceProperties InitialVlansProperty {..}
    = ResourceProperties
        {awsType = "AWS::EVS::Environment.InitialVlans",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EdgeVTep" JSON..= edgeVTep,
                            "ExpansionVlan1" JSON..= expansionVlan1,
                            "ExpansionVlan2" JSON..= expansionVlan2, "Hcx" JSON..= hcx,
                            "NsxUpLink" JSON..= nsxUpLink, "VMotion" JSON..= vMotion,
                            "VSan" JSON..= vSan, "VTep" JSON..= vTep,
                            "VmManagement" JSON..= vmManagement,
                            "VmkManagement" JSON..= vmkManagement]
                           (Prelude.catMaybes
                              [(JSON..=) "HcxNetworkAclId" Prelude.<$> hcxNetworkAclId,
                               (JSON..=) "IsHcxPublic" Prelude.<$> isHcxPublic]))}
instance JSON.ToJSON InitialVlansProperty where
  toJSON InitialVlansProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EdgeVTep" JSON..= edgeVTep,
               "ExpansionVlan1" JSON..= expansionVlan1,
               "ExpansionVlan2" JSON..= expansionVlan2, "Hcx" JSON..= hcx,
               "NsxUpLink" JSON..= nsxUpLink, "VMotion" JSON..= vMotion,
               "VSan" JSON..= vSan, "VTep" JSON..= vTep,
               "VmManagement" JSON..= vmManagement,
               "VmkManagement" JSON..= vmkManagement]
              (Prelude.catMaybes
                 [(JSON..=) "HcxNetworkAclId" Prelude.<$> hcxNetworkAclId,
                  (JSON..=) "IsHcxPublic" Prelude.<$> isHcxPublic])))
instance Property "EdgeVTep" InitialVlansProperty where
  type PropertyType "EdgeVTep" InitialVlansProperty = InitialVlanInfoProperty
  set newValue InitialVlansProperty {..}
    = InitialVlansProperty {edgeVTep = newValue, ..}
instance Property "ExpansionVlan1" InitialVlansProperty where
  type PropertyType "ExpansionVlan1" InitialVlansProperty = InitialVlanInfoProperty
  set newValue InitialVlansProperty {..}
    = InitialVlansProperty {expansionVlan1 = newValue, ..}
instance Property "ExpansionVlan2" InitialVlansProperty where
  type PropertyType "ExpansionVlan2" InitialVlansProperty = InitialVlanInfoProperty
  set newValue InitialVlansProperty {..}
    = InitialVlansProperty {expansionVlan2 = newValue, ..}
instance Property "Hcx" InitialVlansProperty where
  type PropertyType "Hcx" InitialVlansProperty = InitialVlanInfoProperty
  set newValue InitialVlansProperty {..}
    = InitialVlansProperty {hcx = newValue, ..}
instance Property "HcxNetworkAclId" InitialVlansProperty where
  type PropertyType "HcxNetworkAclId" InitialVlansProperty = Value Prelude.Text
  set newValue InitialVlansProperty {..}
    = InitialVlansProperty
        {hcxNetworkAclId = Prelude.pure newValue, ..}
instance Property "IsHcxPublic" InitialVlansProperty where
  type PropertyType "IsHcxPublic" InitialVlansProperty = Value Prelude.Bool
  set newValue InitialVlansProperty {..}
    = InitialVlansProperty {isHcxPublic = Prelude.pure newValue, ..}
instance Property "NsxUpLink" InitialVlansProperty where
  type PropertyType "NsxUpLink" InitialVlansProperty = InitialVlanInfoProperty
  set newValue InitialVlansProperty {..}
    = InitialVlansProperty {nsxUpLink = newValue, ..}
instance Property "VMotion" InitialVlansProperty where
  type PropertyType "VMotion" InitialVlansProperty = InitialVlanInfoProperty
  set newValue InitialVlansProperty {..}
    = InitialVlansProperty {vMotion = newValue, ..}
instance Property "VSan" InitialVlansProperty where
  type PropertyType "VSan" InitialVlansProperty = InitialVlanInfoProperty
  set newValue InitialVlansProperty {..}
    = InitialVlansProperty {vSan = newValue, ..}
instance Property "VTep" InitialVlansProperty where
  type PropertyType "VTep" InitialVlansProperty = InitialVlanInfoProperty
  set newValue InitialVlansProperty {..}
    = InitialVlansProperty {vTep = newValue, ..}
instance Property "VmManagement" InitialVlansProperty where
  type PropertyType "VmManagement" InitialVlansProperty = InitialVlanInfoProperty
  set newValue InitialVlansProperty {..}
    = InitialVlansProperty {vmManagement = newValue, ..}
instance Property "VmkManagement" InitialVlansProperty where
  type PropertyType "VmkManagement" InitialVlansProperty = InitialVlanInfoProperty
  set newValue InitialVlansProperty {..}
    = InitialVlansProperty {vmkManagement = newValue, ..}