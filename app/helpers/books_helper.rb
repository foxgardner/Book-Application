module BooksHelper

    def book_helper
        book_js = ''
        book_count = Book.count

        book_count.times do |i|
            book = Book.offset(i).first
            book_js <<  "
                        <script>
                            var geometry = new THREE.BoxGeometry(#{book.width}, #{book.height}, 1);
                            var material = new THREE.MeshLambertMaterial({color: #{book.color}})
                            
                            var mesh = new THREE.Mesh(geometry, material);
                            mesh.position.y = -2;
                            mesh.position.x = #{i} * 1.01;
                            scene.add(mesh);
                        
                        </script>
                        "
      end
    
        book_js.html_safe
    end
    
end