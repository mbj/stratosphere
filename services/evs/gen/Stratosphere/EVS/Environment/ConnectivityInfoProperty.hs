module Stratosphere.EVS.Environment.ConnectivityInfoProperty (
        ConnectivityInfoProperty(..), mkConnectivityInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectivityInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-connectivityinfo.html>
    ConnectivityInfoProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-connectivityinfo.html#cfn-evs-environment-connectivityinfo-privaterouteserverpeerings>
                              privateRouteServerPeerings :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectivityInfoProperty ::
  ValueList Prelude.Text -> ConnectivityInfoProperty
mkConnectivityInfoProperty privateRouteServerPeerings
  = ConnectivityInfoProperty
      {haddock_workaround_ = (),
       privateRouteServerPeerings = privateRouteServerPeerings}
instance ToResourceProperties ConnectivityInfoProperty where
  toResourceProperties ConnectivityInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::EVS::Environment.ConnectivityInfo",
         supportsTags = Prelude.False,
         properties = ["PrivateRouteServerPeerings"
                         JSON..= privateRouteServerPeerings]}
instance JSON.ToJSON ConnectivityInfoProperty where
  toJSON ConnectivityInfoProperty {..}
    = JSON.object
        ["PrivateRouteServerPeerings" JSON..= privateRouteServerPeerings]
instance Property "PrivateRouteServerPeerings" ConnectivityInfoProperty where
  type PropertyType "PrivateRouteServerPeerings" ConnectivityInfoProperty = ValueList Prelude.Text
  set newValue ConnectivityInfoProperty {..}
    = ConnectivityInfoProperty
        {privateRouteServerPeerings = newValue, ..}