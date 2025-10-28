module Stratosphere.ServiceCatalog.ResourceUpdateConstraint (
        ResourceUpdateConstraint(..), mkResourceUpdateConstraint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceUpdateConstraint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html>
    ResourceUpdateConstraint {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-acceptlanguage>
                              acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-portfolioid>
                              portfolioId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-productid>
                              productId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-tagupdateonprovisionedproduct>
                              tagUpdateOnProvisionedProduct :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceUpdateConstraint ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ResourceUpdateConstraint
mkResourceUpdateConstraint
  portfolioId
  productId
  tagUpdateOnProvisionedProduct
  = ResourceUpdateConstraint
      {haddock_workaround_ = (), portfolioId = portfolioId,
       productId = productId,
       tagUpdateOnProvisionedProduct = tagUpdateOnProvisionedProduct,
       acceptLanguage = Prelude.Nothing, description = Prelude.Nothing}
instance ToResourceProperties ResourceUpdateConstraint where
  toResourceProperties ResourceUpdateConstraint {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::ResourceUpdateConstraint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId,
                            "TagUpdateOnProvisionedProduct"
                              JSON..= tagUpdateOnProvisionedProduct]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                               (JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON ResourceUpdateConstraint where
  toJSON ResourceUpdateConstraint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId,
               "TagUpdateOnProvisionedProduct"
                 JSON..= tagUpdateOnProvisionedProduct]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                  (JSON..=) "Description" Prelude.<$> description])))
instance Property "AcceptLanguage" ResourceUpdateConstraint where
  type PropertyType "AcceptLanguage" ResourceUpdateConstraint = Value Prelude.Text
  set newValue ResourceUpdateConstraint {..}
    = ResourceUpdateConstraint
        {acceptLanguage = Prelude.pure newValue, ..}
instance Property "Description" ResourceUpdateConstraint where
  type PropertyType "Description" ResourceUpdateConstraint = Value Prelude.Text
  set newValue ResourceUpdateConstraint {..}
    = ResourceUpdateConstraint
        {description = Prelude.pure newValue, ..}
instance Property "PortfolioId" ResourceUpdateConstraint where
  type PropertyType "PortfolioId" ResourceUpdateConstraint = Value Prelude.Text
  set newValue ResourceUpdateConstraint {..}
    = ResourceUpdateConstraint {portfolioId = newValue, ..}
instance Property "ProductId" ResourceUpdateConstraint where
  type PropertyType "ProductId" ResourceUpdateConstraint = Value Prelude.Text
  set newValue ResourceUpdateConstraint {..}
    = ResourceUpdateConstraint {productId = newValue, ..}
instance Property "TagUpdateOnProvisionedProduct" ResourceUpdateConstraint where
  type PropertyType "TagUpdateOnProvisionedProduct" ResourceUpdateConstraint = Value Prelude.Text
  set newValue ResourceUpdateConstraint {..}
    = ResourceUpdateConstraint
        {tagUpdateOnProvisionedProduct = newValue, ..}