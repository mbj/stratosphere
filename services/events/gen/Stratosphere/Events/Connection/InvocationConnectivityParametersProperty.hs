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
  = InvocationConnectivityParametersProperty {resourceParameters :: ResourceParametersProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInvocationConnectivityParametersProperty ::
  ResourceParametersProperty
  -> InvocationConnectivityParametersProperty
mkInvocationConnectivityParametersProperty resourceParameters
  = InvocationConnectivityParametersProperty
      {resourceParameters = resourceParameters}
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
  set newValue InvocationConnectivityParametersProperty {}
    = InvocationConnectivityParametersProperty
        {resourceParameters = newValue, ..}