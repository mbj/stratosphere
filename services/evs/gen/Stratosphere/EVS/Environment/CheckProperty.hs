module Stratosphere.EVS.Environment.CheckProperty (
        CheckProperty(..), mkCheckProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CheckProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-check.html>
    CheckProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-check.html#cfn-evs-environment-check-impairedsince>
                   impairedSince :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-check.html#cfn-evs-environment-check-result>
                   result :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-check.html#cfn-evs-environment-check-type>
                   type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCheckProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CheckProperty
mkCheckProperty result type'
  = CheckProperty
      {haddock_workaround_ = (), result = result, type' = type',
       impairedSince = Prelude.Nothing}
instance ToResourceProperties CheckProperty where
  toResourceProperties CheckProperty {..}
    = ResourceProperties
        {awsType = "AWS::EVS::Environment.Check",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Result" JSON..= result, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ImpairedSince" Prelude.<$> impairedSince]))}
instance JSON.ToJSON CheckProperty where
  toJSON CheckProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Result" JSON..= result, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ImpairedSince" Prelude.<$> impairedSince])))
instance Property "ImpairedSince" CheckProperty where
  type PropertyType "ImpairedSince" CheckProperty = Value Prelude.Text
  set newValue CheckProperty {..}
    = CheckProperty {impairedSince = Prelude.pure newValue, ..}
instance Property "Result" CheckProperty where
  type PropertyType "Result" CheckProperty = Value Prelude.Text
  set newValue CheckProperty {..}
    = CheckProperty {result = newValue, ..}
instance Property "Type" CheckProperty where
  type PropertyType "Type" CheckProperty = Value Prelude.Text
  set newValue CheckProperty {..}
    = CheckProperty {type' = newValue, ..}