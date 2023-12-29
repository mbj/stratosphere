module Stratosphere.IAM.ServiceLinkedRole (
        ServiceLinkedRole(..), mkServiceLinkedRole
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceLinkedRole
  = ServiceLinkedRole {aWSServiceName :: (Value Prelude.Text),
                       customSuffix :: (Prelude.Maybe (Value Prelude.Text)),
                       description :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceLinkedRole :: Value Prelude.Text -> ServiceLinkedRole
mkServiceLinkedRole aWSServiceName
  = ServiceLinkedRole
      {aWSServiceName = aWSServiceName, customSuffix = Prelude.Nothing,
       description = Prelude.Nothing}
instance ToResourceProperties ServiceLinkedRole where
  toResourceProperties ServiceLinkedRole {..}
    = ResourceProperties
        {awsType = "AWS::IAM::ServiceLinkedRole",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AWSServiceName" JSON..= aWSServiceName]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomSuffix" Prelude.<$> customSuffix,
                               (JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON ServiceLinkedRole where
  toJSON ServiceLinkedRole {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AWSServiceName" JSON..= aWSServiceName]
              (Prelude.catMaybes
                 [(JSON..=) "CustomSuffix" Prelude.<$> customSuffix,
                  (JSON..=) "Description" Prelude.<$> description])))
instance Property "AWSServiceName" ServiceLinkedRole where
  type PropertyType "AWSServiceName" ServiceLinkedRole = Value Prelude.Text
  set newValue ServiceLinkedRole {..}
    = ServiceLinkedRole {aWSServiceName = newValue, ..}
instance Property "CustomSuffix" ServiceLinkedRole where
  type PropertyType "CustomSuffix" ServiceLinkedRole = Value Prelude.Text
  set newValue ServiceLinkedRole {..}
    = ServiceLinkedRole {customSuffix = Prelude.pure newValue, ..}
instance Property "Description" ServiceLinkedRole where
  type PropertyType "Description" ServiceLinkedRole = Value Prelude.Text
  set newValue ServiceLinkedRole {..}
    = ServiceLinkedRole {description = Prelude.pure newValue, ..}