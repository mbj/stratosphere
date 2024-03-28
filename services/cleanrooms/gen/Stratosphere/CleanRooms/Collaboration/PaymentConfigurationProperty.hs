module Stratosphere.CleanRooms.Collaboration.PaymentConfigurationProperty (
        module Exports, PaymentConfigurationProperty(..),
        mkPaymentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.QueryComputePaymentConfigProperty as Exports
import Stratosphere.ResourceProperties
data PaymentConfigurationProperty
  = PaymentConfigurationProperty {queryCompute :: QueryComputePaymentConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPaymentConfigurationProperty ::
  QueryComputePaymentConfigProperty -> PaymentConfigurationProperty
mkPaymentConfigurationProperty queryCompute
  = PaymentConfigurationProperty {queryCompute = queryCompute}
instance ToResourceProperties PaymentConfigurationProperty where
  toResourceProperties PaymentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration.PaymentConfiguration",
         supportsTags = Prelude.False,
         properties = ["QueryCompute" JSON..= queryCompute]}
instance JSON.ToJSON PaymentConfigurationProperty where
  toJSON PaymentConfigurationProperty {..}
    = JSON.object ["QueryCompute" JSON..= queryCompute]
instance Property "QueryCompute" PaymentConfigurationProperty where
  type PropertyType "QueryCompute" PaymentConfigurationProperty = QueryComputePaymentConfigProperty
  set newValue PaymentConfigurationProperty {}
    = PaymentConfigurationProperty {queryCompute = newValue, ..}