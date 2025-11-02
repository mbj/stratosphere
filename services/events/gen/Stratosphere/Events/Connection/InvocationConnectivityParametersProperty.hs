module Stratosphere.Events.Connection.InvocationConnectivityParametersProperty (
        module Exports, InvocationConnectivityParametersProperty(..),
        mkInvocationConnectivityParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Connection.ResourceParametersProperty as Exports
import Stratosphere.ResourceProperties
data InvocationConnectivityParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-invocationconnectivityparameters.html>
    InvocationConnectivityParametersProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-invocationconnectivityparameters.html#cfn-events-connection-invocationconnectivityparameters-resourceparameters>
                                              resourceParameters :: ResourceParametersProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInvocationConnectivityParametersProperty ::
  ResourceParametersProperty
  -> InvocationConnectivityParametersProperty
mkInvocationConnectivityParametersProperty resourceParameters
  = InvocationConnectivityParametersProperty
      {haddock_workaround_ = (), resourceParameters = resourceParameters}
instance ToResourceProperties InvocationConnectivityParametersProperty where
  toResourceProperties InvocationConnectivityParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection.InvocationConnectivityParameters",
         supportsTags = Prelude.False,
         properties = ["ResourceParameters" JSON..= resourceParameters]}
instance JSON.ToJSON InvocationConnectivityParametersProperty where
  toJSON InvocationConnectivityParametersProperty {..}
    = JSON.object ["ResourceParameters" JSON..= resourceParameters]
instance Property "ResourceParameters" InvocationConnectivityParametersProperty where
  type PropertyType "ResourceParameters" InvocationConnectivityParametersProperty = ResourceParametersProperty
  set newValue InvocationConnectivityParametersProperty {..}
    = InvocationConnectivityParametersProperty
        {resourceParameters = newValue, ..}