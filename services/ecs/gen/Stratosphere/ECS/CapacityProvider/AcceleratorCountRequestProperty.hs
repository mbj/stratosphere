module Stratosphere.ECS.CapacityProvider.AcceleratorCountRequestProperty (
        AcceleratorCountRequestProperty(..),
        mkAcceleratorCountRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcceleratorCountRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-acceleratorcountrequest.html>
    AcceleratorCountRequestProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-acceleratorcountrequest.html#cfn-ecs-capacityprovider-acceleratorcountrequest-max>
                                     max :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-acceleratorcountrequest.html#cfn-ecs-capacityprovider-acceleratorcountrequest-min>
                                     min :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAcceleratorCountRequestProperty ::
  AcceleratorCountRequestProperty
mkAcceleratorCountRequestProperty
  = AcceleratorCountRequestProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties AcceleratorCountRequestProperty where
  toResourceProperties AcceleratorCountRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::CapacityProvider.AcceleratorCountRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON AcceleratorCountRequestProperty where
  toJSON AcceleratorCountRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" AcceleratorCountRequestProperty where
  type PropertyType "Max" AcceleratorCountRequestProperty = Value Prelude.Integer
  set newValue AcceleratorCountRequestProperty {..}
    = AcceleratorCountRequestProperty {max = Prelude.pure newValue, ..}
instance Property "Min" AcceleratorCountRequestProperty where
  type PropertyType "Min" AcceleratorCountRequestProperty = Value Prelude.Integer
  set newValue AcceleratorCountRequestProperty {..}
    = AcceleratorCountRequestProperty {min = Prelude.pure newValue, ..}