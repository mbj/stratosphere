module Stratosphere.EVS.Environment.HostInfoForCreateProperty (
        HostInfoForCreateProperty(..), mkHostInfoForCreateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostInfoForCreateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-hostinfoforcreate.html>
    HostInfoForCreateProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-hostinfoforcreate.html#cfn-evs-environment-hostinfoforcreate-dedicatedhostid>
                               dedicatedHostId :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-hostinfoforcreate.html#cfn-evs-environment-hostinfoforcreate-hostname>
                               hostName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-hostinfoforcreate.html#cfn-evs-environment-hostinfoforcreate-instancetype>
                               instanceType :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-hostinfoforcreate.html#cfn-evs-environment-hostinfoforcreate-keyname>
                               keyName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-hostinfoforcreate.html#cfn-evs-environment-hostinfoforcreate-placementgroupid>
                               placementGroupId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHostInfoForCreateProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> HostInfoForCreateProperty
mkHostInfoForCreateProperty hostName instanceType keyName
  = HostInfoForCreateProperty
      {haddock_workaround_ = (), hostName = hostName,
       instanceType = instanceType, keyName = keyName,
       dedicatedHostId = Prelude.Nothing,
       placementGroupId = Prelude.Nothing}
instance ToResourceProperties HostInfoForCreateProperty where
  toResourceProperties HostInfoForCreateProperty {..}
    = ResourceProperties
        {awsType = "AWS::EVS::Environment.HostInfoForCreate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HostName" JSON..= hostName, "InstanceType" JSON..= instanceType,
                            "KeyName" JSON..= keyName]
                           (Prelude.catMaybes
                              [(JSON..=) "DedicatedHostId" Prelude.<$> dedicatedHostId,
                               (JSON..=) "PlacementGroupId" Prelude.<$> placementGroupId]))}
instance JSON.ToJSON HostInfoForCreateProperty where
  toJSON HostInfoForCreateProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HostName" JSON..= hostName, "InstanceType" JSON..= instanceType,
               "KeyName" JSON..= keyName]
              (Prelude.catMaybes
                 [(JSON..=) "DedicatedHostId" Prelude.<$> dedicatedHostId,
                  (JSON..=) "PlacementGroupId" Prelude.<$> placementGroupId])))
instance Property "DedicatedHostId" HostInfoForCreateProperty where
  type PropertyType "DedicatedHostId" HostInfoForCreateProperty = Value Prelude.Text
  set newValue HostInfoForCreateProperty {..}
    = HostInfoForCreateProperty
        {dedicatedHostId = Prelude.pure newValue, ..}
instance Property "HostName" HostInfoForCreateProperty where
  type PropertyType "HostName" HostInfoForCreateProperty = Value Prelude.Text
  set newValue HostInfoForCreateProperty {..}
    = HostInfoForCreateProperty {hostName = newValue, ..}
instance Property "InstanceType" HostInfoForCreateProperty where
  type PropertyType "InstanceType" HostInfoForCreateProperty = Value Prelude.Text
  set newValue HostInfoForCreateProperty {..}
    = HostInfoForCreateProperty {instanceType = newValue, ..}
instance Property "KeyName" HostInfoForCreateProperty where
  type PropertyType "KeyName" HostInfoForCreateProperty = Value Prelude.Text
  set newValue HostInfoForCreateProperty {..}
    = HostInfoForCreateProperty {keyName = newValue, ..}
instance Property "PlacementGroupId" HostInfoForCreateProperty where
  type PropertyType "PlacementGroupId" HostInfoForCreateProperty = Value Prelude.Text
  set newValue HostInfoForCreateProperty {..}
    = HostInfoForCreateProperty
        {placementGroupId = Prelude.pure newValue, ..}