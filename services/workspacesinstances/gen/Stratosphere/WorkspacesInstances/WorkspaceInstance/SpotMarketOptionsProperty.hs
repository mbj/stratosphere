module Stratosphere.WorkspacesInstances.WorkspaceInstance.SpotMarketOptionsProperty (
        SpotMarketOptionsProperty(..), mkSpotMarketOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotMarketOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-spotmarketoptions.html>
    SpotMarketOptionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-spotmarketoptions.html#cfn-workspacesinstances-workspaceinstance-spotmarketoptions-instanceinterruptionbehavior>
                               instanceInterruptionBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-spotmarketoptions.html#cfn-workspacesinstances-workspaceinstance-spotmarketoptions-maxprice>
                               maxPrice :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-spotmarketoptions.html#cfn-workspacesinstances-workspaceinstance-spotmarketoptions-spotinstancetype>
                               spotInstanceType :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-spotmarketoptions.html#cfn-workspacesinstances-workspaceinstance-spotmarketoptions-validuntilutc>
                               validUntilUtc :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpotMarketOptionsProperty :: SpotMarketOptionsProperty
mkSpotMarketOptionsProperty
  = SpotMarketOptionsProperty
      {haddock_workaround_ = (),
       instanceInterruptionBehavior = Prelude.Nothing,
       maxPrice = Prelude.Nothing, spotInstanceType = Prelude.Nothing,
       validUntilUtc = Prelude.Nothing}
instance ToResourceProperties SpotMarketOptionsProperty where
  toResourceProperties SpotMarketOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.SpotMarketOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InstanceInterruptionBehavior"
                              Prelude.<$> instanceInterruptionBehavior,
                            (JSON..=) "MaxPrice" Prelude.<$> maxPrice,
                            (JSON..=) "SpotInstanceType" Prelude.<$> spotInstanceType,
                            (JSON..=) "ValidUntilUtc" Prelude.<$> validUntilUtc])}
instance JSON.ToJSON SpotMarketOptionsProperty where
  toJSON SpotMarketOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InstanceInterruptionBehavior"
                 Prelude.<$> instanceInterruptionBehavior,
               (JSON..=) "MaxPrice" Prelude.<$> maxPrice,
               (JSON..=) "SpotInstanceType" Prelude.<$> spotInstanceType,
               (JSON..=) "ValidUntilUtc" Prelude.<$> validUntilUtc]))
instance Property "InstanceInterruptionBehavior" SpotMarketOptionsProperty where
  type PropertyType "InstanceInterruptionBehavior" SpotMarketOptionsProperty = Value Prelude.Text
  set newValue SpotMarketOptionsProperty {..}
    = SpotMarketOptionsProperty
        {instanceInterruptionBehavior = Prelude.pure newValue, ..}
instance Property "MaxPrice" SpotMarketOptionsProperty where
  type PropertyType "MaxPrice" SpotMarketOptionsProperty = Value Prelude.Text
  set newValue SpotMarketOptionsProperty {..}
    = SpotMarketOptionsProperty {maxPrice = Prelude.pure newValue, ..}
instance Property "SpotInstanceType" SpotMarketOptionsProperty where
  type PropertyType "SpotInstanceType" SpotMarketOptionsProperty = Value Prelude.Text
  set newValue SpotMarketOptionsProperty {..}
    = SpotMarketOptionsProperty
        {spotInstanceType = Prelude.pure newValue, ..}
instance Property "ValidUntilUtc" SpotMarketOptionsProperty where
  type PropertyType "ValidUntilUtc" SpotMarketOptionsProperty = Value Prelude.Text
  set newValue SpotMarketOptionsProperty {..}
    = SpotMarketOptionsProperty
        {validUntilUtc = Prelude.pure newValue, ..}