module Stratosphere.WorkspacesInstances.WorkspaceInstance.InstanceMarketOptionsRequestProperty (
        module Exports, InstanceMarketOptionsRequestProperty(..),
        mkInstanceMarketOptionsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.SpotMarketOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceMarketOptionsRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancemarketoptionsrequest.html>
    InstanceMarketOptionsRequestProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancemarketoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-instancemarketoptionsrequest-markettype>
                                          marketType :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancemarketoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-instancemarketoptionsrequest-spotoptions>
                                          spotOptions :: (Prelude.Maybe SpotMarketOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceMarketOptionsRequestProperty ::
  InstanceMarketOptionsRequestProperty
mkInstanceMarketOptionsRequestProperty
  = InstanceMarketOptionsRequestProperty
      {haddock_workaround_ = (), marketType = Prelude.Nothing,
       spotOptions = Prelude.Nothing}
instance ToResourceProperties InstanceMarketOptionsRequestProperty where
  toResourceProperties InstanceMarketOptionsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.InstanceMarketOptionsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MarketType" Prelude.<$> marketType,
                            (JSON..=) "SpotOptions" Prelude.<$> spotOptions])}
instance JSON.ToJSON InstanceMarketOptionsRequestProperty where
  toJSON InstanceMarketOptionsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MarketType" Prelude.<$> marketType,
               (JSON..=) "SpotOptions" Prelude.<$> spotOptions]))
instance Property "MarketType" InstanceMarketOptionsRequestProperty where
  type PropertyType "MarketType" InstanceMarketOptionsRequestProperty = Value Prelude.Text
  set newValue InstanceMarketOptionsRequestProperty {..}
    = InstanceMarketOptionsRequestProperty
        {marketType = Prelude.pure newValue, ..}
instance Property "SpotOptions" InstanceMarketOptionsRequestProperty where
  type PropertyType "SpotOptions" InstanceMarketOptionsRequestProperty = SpotMarketOptionsProperty
  set newValue InstanceMarketOptionsRequestProperty {..}
    = InstanceMarketOptionsRequestProperty
        {spotOptions = Prelude.pure newValue, ..}