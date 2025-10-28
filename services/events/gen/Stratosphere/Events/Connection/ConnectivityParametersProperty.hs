module Stratosphere.Events.Connection.ConnectivityParametersProperty (
        module Exports, ConnectivityParametersProperty(..),
        mkConnectivityParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Connection.ResourceParametersProperty as Exports
import Stratosphere.ResourceProperties
data ConnectivityParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-connectivityparameters.html>
    ConnectivityParametersProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-connectivityparameters.html#cfn-events-connection-connectivityparameters-resourceparameters>
                                    resourceParameters :: ResourceParametersProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectivityParametersProperty ::
  ResourceParametersProperty -> ConnectivityParametersProperty
mkConnectivityParametersProperty resourceParameters
  = ConnectivityParametersProperty
      {haddock_workaround_ = (), resourceParameters = resourceParameters}
instance ToResourceProperties ConnectivityParametersProperty where
  toResourceProperties ConnectivityParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection.ConnectivityParameters",
         supportsTags = Prelude.False,
         properties = ["ResourceParameters" JSON..= resourceParameters]}
instance JSON.ToJSON ConnectivityParametersProperty where
  toJSON ConnectivityParametersProperty {..}
    = JSON.object ["ResourceParameters" JSON..= resourceParameters]
instance Property "ResourceParameters" ConnectivityParametersProperty where
  type PropertyType "ResourceParameters" ConnectivityParametersProperty = ResourceParametersProperty
  set newValue ConnectivityParametersProperty {..}
    = ConnectivityParametersProperty
        {resourceParameters = newValue, ..}