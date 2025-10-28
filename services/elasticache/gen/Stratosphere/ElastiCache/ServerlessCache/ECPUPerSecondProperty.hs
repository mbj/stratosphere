module Stratosphere.ElastiCache.ServerlessCache.ECPUPerSecondProperty (
        ECPUPerSecondProperty(..), mkECPUPerSecondProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ECPUPerSecondProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-ecpupersecond.html>
    ECPUPerSecondProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-ecpupersecond.html#cfn-elasticache-serverlesscache-ecpupersecond-maximum>
                           maximum :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-ecpupersecond.html#cfn-elasticache-serverlesscache-ecpupersecond-minimum>
                           minimum :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkECPUPerSecondProperty :: ECPUPerSecondProperty
mkECPUPerSecondProperty
  = ECPUPerSecondProperty
      {haddock_workaround_ = (), maximum = Prelude.Nothing,
       minimum = Prelude.Nothing}
instance ToResourceProperties ECPUPerSecondProperty where
  toResourceProperties ECPUPerSecondProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::ServerlessCache.ECPUPerSecond",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Maximum" Prelude.<$> maximum,
                            (JSON..=) "Minimum" Prelude.<$> minimum])}
instance JSON.ToJSON ECPUPerSecondProperty where
  toJSON ECPUPerSecondProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Maximum" Prelude.<$> maximum,
               (JSON..=) "Minimum" Prelude.<$> minimum]))
instance Property "Maximum" ECPUPerSecondProperty where
  type PropertyType "Maximum" ECPUPerSecondProperty = Value Prelude.Integer
  set newValue ECPUPerSecondProperty {..}
    = ECPUPerSecondProperty {maximum = Prelude.pure newValue, ..}
instance Property "Minimum" ECPUPerSecondProperty where
  type PropertyType "Minimum" ECPUPerSecondProperty = Value Prelude.Integer
  set newValue ECPUPerSecondProperty {..}
    = ECPUPerSecondProperty {minimum = Prelude.pure newValue, ..}