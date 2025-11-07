module Stratosphere.EVS.Environment.InitialVlanInfoProperty (
        InitialVlanInfoProperty(..), mkInitialVlanInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InitialVlanInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlaninfo.html>
    InitialVlanInfoProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlaninfo.html#cfn-evs-environment-initialvlaninfo-cidr>
                             cidr :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInitialVlanInfoProperty ::
  Value Prelude.Text -> InitialVlanInfoProperty
mkInitialVlanInfoProperty cidr
  = InitialVlanInfoProperty {haddock_workaround_ = (), cidr = cidr}
instance ToResourceProperties InitialVlanInfoProperty where
  toResourceProperties InitialVlanInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::EVS::Environment.InitialVlanInfo",
         supportsTags = Prelude.False, properties = ["Cidr" JSON..= cidr]}
instance JSON.ToJSON InitialVlanInfoProperty where
  toJSON InitialVlanInfoProperty {..}
    = JSON.object ["Cidr" JSON..= cidr]
instance Property "Cidr" InitialVlanInfoProperty where
  type PropertyType "Cidr" InitialVlanInfoProperty = Value Prelude.Text
  set newValue InitialVlanInfoProperty {..}
    = InitialVlanInfoProperty {cidr = newValue, ..}