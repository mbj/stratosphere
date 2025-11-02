module Stratosphere.EC2.LaunchTemplate.InstanceMarketOptionsProperty (
        module Exports, InstanceMarketOptionsProperty(..),
        mkInstanceMarketOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.SpotOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceMarketOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancemarketoptions.html>
    InstanceMarketOptionsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancemarketoptions.html#cfn-ec2-launchtemplate-instancemarketoptions-markettype>
                                   marketType :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancemarketoptions.html#cfn-ec2-launchtemplate-instancemarketoptions-spotoptions>
                                   spotOptions :: (Prelude.Maybe SpotOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceMarketOptionsProperty :: InstanceMarketOptionsProperty
mkInstanceMarketOptionsProperty
  = InstanceMarketOptionsProperty
      {haddock_workaround_ = (), marketType = Prelude.Nothing,
       spotOptions = Prelude.Nothing}
instance ToResourceProperties InstanceMarketOptionsProperty where
  toResourceProperties InstanceMarketOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.InstanceMarketOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MarketType" Prelude.<$> marketType,
                            (JSON..=) "SpotOptions" Prelude.<$> spotOptions])}
instance JSON.ToJSON InstanceMarketOptionsProperty where
  toJSON InstanceMarketOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MarketType" Prelude.<$> marketType,
               (JSON..=) "SpotOptions" Prelude.<$> spotOptions]))
instance Property "MarketType" InstanceMarketOptionsProperty where
  type PropertyType "MarketType" InstanceMarketOptionsProperty = Value Prelude.Text
  set newValue InstanceMarketOptionsProperty {..}
    = InstanceMarketOptionsProperty
        {marketType = Prelude.pure newValue, ..}
instance Property "SpotOptions" InstanceMarketOptionsProperty where
  type PropertyType "SpotOptions" InstanceMarketOptionsProperty = SpotOptionsProperty
  set newValue InstanceMarketOptionsProperty {..}
    = InstanceMarketOptionsProperty
        {spotOptions = Prelude.pure newValue, ..}