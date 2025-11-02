module Stratosphere.Lightsail.Distribution.HeaderObjectProperty (
        HeaderObjectProperty(..), mkHeaderObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-headerobject.html>
    HeaderObjectProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-headerobject.html#cfn-lightsail-distribution-headerobject-headersallowlist>
                          headersAllowList :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-headerobject.html#cfn-lightsail-distribution-headerobject-option>
                          option :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeaderObjectProperty :: HeaderObjectProperty
mkHeaderObjectProperty
  = HeaderObjectProperty
      {haddock_workaround_ = (), headersAllowList = Prelude.Nothing,
       option = Prelude.Nothing}
instance ToResourceProperties HeaderObjectProperty where
  toResourceProperties HeaderObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Distribution.HeaderObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeadersAllowList" Prelude.<$> headersAllowList,
                            (JSON..=) "Option" Prelude.<$> option])}
instance JSON.ToJSON HeaderObjectProperty where
  toJSON HeaderObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeadersAllowList" Prelude.<$> headersAllowList,
               (JSON..=) "Option" Prelude.<$> option]))
instance Property "HeadersAllowList" HeaderObjectProperty where
  type PropertyType "HeadersAllowList" HeaderObjectProperty = ValueList Prelude.Text
  set newValue HeaderObjectProperty {..}
    = HeaderObjectProperty
        {headersAllowList = Prelude.pure newValue, ..}
instance Property "Option" HeaderObjectProperty where
  type PropertyType "Option" HeaderObjectProperty = Value Prelude.Text
  set newValue HeaderObjectProperty {..}
    = HeaderObjectProperty {option = Prelude.pure newValue, ..}