module Stratosphere.CleanRooms.Collaboration.PaymentConfigurationProperty (
        module Exports, PaymentConfigurationProperty(..),
        mkPaymentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.JobComputePaymentConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.MLPaymentConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.QueryComputePaymentConfigProperty as Exports
import Stratosphere.ResourceProperties
data PaymentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-paymentconfiguration.html>
    PaymentConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-paymentconfiguration.html#cfn-cleanrooms-collaboration-paymentconfiguration-jobcompute>
                                  jobCompute :: (Prelude.Maybe JobComputePaymentConfigProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-paymentconfiguration.html#cfn-cleanrooms-collaboration-paymentconfiguration-machinelearning>
                                  machineLearning :: (Prelude.Maybe MLPaymentConfigProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-paymentconfiguration.html#cfn-cleanrooms-collaboration-paymentconfiguration-querycompute>
                                  queryCompute :: QueryComputePaymentConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPaymentConfigurationProperty ::
  QueryComputePaymentConfigProperty -> PaymentConfigurationProperty
mkPaymentConfigurationProperty queryCompute
  = PaymentConfigurationProperty
      {haddock_workaround_ = (), queryCompute = queryCompute,
       jobCompute = Prelude.Nothing, machineLearning = Prelude.Nothing}
instance ToResourceProperties PaymentConfigurationProperty where
  toResourceProperties PaymentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration.PaymentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QueryCompute" JSON..= queryCompute]
                           (Prelude.catMaybes
                              [(JSON..=) "JobCompute" Prelude.<$> jobCompute,
                               (JSON..=) "MachineLearning" Prelude.<$> machineLearning]))}
instance JSON.ToJSON PaymentConfigurationProperty where
  toJSON PaymentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QueryCompute" JSON..= queryCompute]
              (Prelude.catMaybes
                 [(JSON..=) "JobCompute" Prelude.<$> jobCompute,
                  (JSON..=) "MachineLearning" Prelude.<$> machineLearning])))
instance Property "JobCompute" PaymentConfigurationProperty where
  type PropertyType "JobCompute" PaymentConfigurationProperty = JobComputePaymentConfigProperty
  set newValue PaymentConfigurationProperty {..}
    = PaymentConfigurationProperty
        {jobCompute = Prelude.pure newValue, ..}
instance Property "MachineLearning" PaymentConfigurationProperty where
  type PropertyType "MachineLearning" PaymentConfigurationProperty = MLPaymentConfigProperty
  set newValue PaymentConfigurationProperty {..}
    = PaymentConfigurationProperty
        {machineLearning = Prelude.pure newValue, ..}
instance Property "QueryCompute" PaymentConfigurationProperty where
  type PropertyType "QueryCompute" PaymentConfigurationProperty = QueryComputePaymentConfigProperty
  set newValue PaymentConfigurationProperty {..}
    = PaymentConfigurationProperty {queryCompute = newValue, ..}